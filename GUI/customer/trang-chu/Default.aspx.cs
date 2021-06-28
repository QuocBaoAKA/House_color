using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
using System.Data;
namespace GUI.customer.trang_chu
{
    public partial class Default : System.Web.UI.Page
    {
        BLL_Customer bllCustomer = new BLL_Customer();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (!IsPostBack)
                //{
                //    rpt_hienThiSanPham.DataSource = bllCustomer.hienThiSPMoiCapNhat();
                //    rpt_hienThiSanPham.DataBind();
                //}

            }
        }

        protected void lbtn_muaHang_Click(object sender, EventArgs e)
        {
            if (Session["taiKhoan"] != null)
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
        }

        protected void rpt_hienThiSanPham_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (Session["taiKhoan"] != null)
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
        }
    }
}