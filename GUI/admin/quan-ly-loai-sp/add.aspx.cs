using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace GUI.admin.quan_ly_loai_sp
{
    public partial class add : System.Web.UI.Page
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
            }
        }

        protected void btn_them_Click(object sender, EventArgs e)
        {
            string maLoai = txt_maLoai.Text.Trim();
            string tenLoai = txt_tenLoai.Text.Trim();

            if(bllAdmin.themLoaiSanPham(maLoai, tenLoai))
            {
                Session["success"] = "Thêm loại sản phẩm thành công";
                Response.Redirect("../quan-ly-loai-sp/");
            }
            else
            {
                Session["error"] = "Mã loại đã tồn tại";
            }
        }
    }
}