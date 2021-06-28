using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

namespace GUI.admin.quan_ly_hang
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
                if (Request.QueryString["mahangsp"] == "" || Request.QueryString["mahangsp"] == null)
                {
                    Response.Redirect("./Default.aspx");
                }

                string maHangSP = Request.QueryString["mahangsp"].ToString();

                if (bllAdmin.xoaHangSanPham(maHangSP))
                {
                    Session["success"] = "Xóa hãng sản phẩm thành công";
                    Response.Redirect("../quan-ly-hang/");
                }
                else
                {
                    Session["error"] = "Không thể xóa do hãng sản phẩm tồn tại liên kết";
                    Response.Redirect("../quan-ly-hang/");
                }
            }
        }
    }
}