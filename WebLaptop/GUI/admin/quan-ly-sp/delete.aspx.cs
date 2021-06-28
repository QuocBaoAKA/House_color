using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

namespace GUI.admin.quan_ly_sp
{
    public partial class delete : System.Web.UI.Page
    {
        BLL_Admin bllAdmin = new BLL_Admin();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["taiKhoan"] == null)
                {
                    Response.Redirect("../Default.aspx");
                }
                if (Request.QueryString["maSP"] == "" || Request.QueryString["maSP"] == null)
                {
                    Response.Redirect("./Default.aspx");
                }

                string maSP = (Request.QueryString["maSP"]);

                if (bllAdmin.xoaSanPham(maSP))
                {
                    Session["success"] = "Xóa sản phẩm thành công";
                    Response.Redirect("../quan-ly-sp/");
                }
                else
                {
                    Session["error"] = "Không thể xóa";
                    Response.Redirect("../quan-ly-sp/");
                }
            }
        }
    }
}