using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;
using System.Data;

namespace GUI
{
    public partial class chitietsp : System.Web.UI.Page
    {
        BLL_Customer bl = new BLL_Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["masp"] == "" || Request.QueryString["masp"] == null)
                {
                    Response.Redirect("../tat-ca-san-pham/");
                }


                string id = (Request.QueryString["masp"].ToString());
                Repeater1.DataSource = bl.hienThiChiTietSP(id);
                Repeater1.DataBind();
            }
        }
        protected void lbtn_muaHang_Click(object sender, EventArgs e)
        {
            foreach (RepeaterItem item in Repeater1.Items)
            {
                TextBox txt_slMua = (TextBox)item.FindControl("txt_slMua");

                if (Session["taiKhoan"] != null)
                {
                    if (Session["slSPtrongGioHang"] == null)
                    {
                        Session["slSPtrongGioHang"] = Int32.Parse(txt_slMua.Text);
                    }
                    else
                    {
                        Session["slSPtrongGioHang"] = Int32.Parse(Session["slSPtrongGioHang"].ToString()) + Int32.Parse(txt_slMua.Text);
                    }
                }
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            foreach (RepeaterItem item in Repeater1.Items)
            {
                TextBox txt_slMua = (TextBox)item.FindControl("txt_slMua");
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
                            r["soLuong"] = Int32.Parse(r["soLuong"].ToString()) + Int32.Parse(txt_slMua.Text);
                            coTrongGioHang = true;
                            break;
                        }
                    }

                    if (!coTrongGioHang)
                    {
                        DataRow r = gioHang.NewRow();
                        r["maSP"] = e.CommandArgument.ToString();
                        r["soLuong"] = Int32.Parse(txt_slMua.Text);
                        gioHang.Rows.Add(r);
                    }

                    Session["gioHang"] = gioHang;
                }
            }
        }
    }
 }