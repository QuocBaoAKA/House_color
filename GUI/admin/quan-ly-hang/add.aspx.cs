using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace GUI.admin.quan_ly_hang
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
            string mamau = txt_maHang.Text.Trim();
            string tenmau = txt_tenHang.Text.Trim();

            if (bllAdmin.themmausanpham(mamau, tenmau))
            {
                Session["success"] = "Thêm màu sản phẩm thành công";
                Response.Redirect("../quan-ly-hang/");
            }
            else
            {
                Session["error"] = "Mã màu đã tồn tại";
            }
        }
    }
}