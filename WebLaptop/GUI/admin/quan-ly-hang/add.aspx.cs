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
            string maHang = txt_maHang.Text.Trim();
            string tenHang = txt_tenHang.Text.Trim();

            if (bllAdmin.themHangSanPham(maHang, tenHang))
            {
                Session["success"] = "Thêm hãng sản phẩm thành công";
                Response.Redirect("../quan-ly-hang/");
            }
            else
            {
                Session["error"] = "Mã hãng đã tồn tại";
            }
        }
    }
}