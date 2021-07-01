using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

namespace GUI.admin.quan_ly_loai_sp
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
                if (Request.QueryString["maloaisp"] == "" || Request.QueryString["maloaisp"] == null)
                {
                    Response.Redirect("./Default.aspx");
                }

                string maLoaiSP = Request.QueryString["maloaisp"].ToString();

                if (bllAdmin.xoaLoaiSanPham(maLoaiSP))
                {
                    Session["success"] = "Xóa Loại sản phẩm thành công";
                    //ClientScript.RegisterStartupScript(this.GetType(), "Deleted!", "Xóa thành công", true); 
                    Response.Redirect("../quan-ly-loai-sp/");
                }
                else
                {
                    Session["error"] = "Không thể xóa do loại sản phẩm tồn tại liên kết";
                    Response.Redirect("../quan-ly-loai-sp/");
                }
            }
        }
    }
}