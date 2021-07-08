using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
using System.Data;

namespace GUI.customer.danh_muc_san_pham
{
    public partial class Default : System.Web.UI.Page
    {
        BLL_Customer bllCustomer = new BLL_Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Request.QueryString["maloai"] == "" || Request.QueryString["maloai"] == null)
                {
                    Response.Redirect("../tat-ca-san-pham/");
                }

                string maLoai = Request.QueryString["maloai"];
                rpt_hienThiSanPham.DataSource = bllCustomer.hienThiSPTheoLoai(maLoai);
                rpt_hienThiSanPham.DataBind();

                lb_tenDanhMuc.Text = "";
                lb_tenDanhMuc.Text += bllCustomer.layTenLoaiSP(maLoai);

                Session["maxPrice"] = bllCustomer.giaCaoNhatTheoDanhMuc(maLoai);
                //Session["minPrice"] = bllCustomer.giaThapNhatTheoDanhMuc(maLoai);
            }
        }

        protected void lbtn_muaHang_Click(object sender, EventArgs e)
        {
            if (Session["slSPtrongGioHang"] == null)
            {
                Session["slSPtrongGioHang"] = 1;
            }
            else
            {
                Session["slSPtrongGioHang"] = Int32.Parse(Session["slSPtrongGioHang"].ToString()) + 1;
            }

        }

        protected void rpt_hienThiSanPham_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            DataTable gioHang = new DataTable();
            if (e.CommandName == "muaHang")
            {
                if (Session["gioHang"] == null)
                {
                    gioHang.Columns.Add("maSP");
                    gioHang.Columns.Add("soLuong");
                }
                else
                {
                    gioHang = Session["gioHang"] as DataTable;
                }

                bool coTrongGioHang = false;
                foreach (DataRow r in gioHang.Rows)
                {
                    if (r["maSP"].ToString() == e.CommandArgument.ToString())
                    {
                        r["soLuong"] = Int32.Parse(r["soLuong"].ToString()) + 1;
                        coTrongGioHang = true;
                        break;
                    }
                }

                if (!coTrongGioHang)
                {
                    DataRow r = gioHang.NewRow();
                    r["maSP"] = e.CommandArgument.ToString();
                    r["soLuong"] = 1;
                    gioHang.Rows.Add(r);
                }

                Session["gioHang"] = gioHang;
            }
        }

        protected void btn_loc_Click(object sender, EventArgs e)
        {
            int locTheo = Int32.Parse(ddl_locTheo.SelectedValue);
            int max = Int32.Parse(maxPrice.Text);
            int min = Int32.Parse(minPrice.Text);
            string maLoai = Request.QueryString["maloai"];
            rpt_hienThiSanPham.DataSource = bllCustomer.hienThiSPLocTheoDanhMuc(min, max, locTheo, maLoai);
            rpt_hienThiSanPham.DataBind();
        }
    }
}