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
    public partial class edit : System.Web.UI.Page
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

                txt_tenHang.Focus();
                string maHangSP = Request.QueryString["mahangsp"].ToString();
                var loaiSanPham = bllAdmin.hienThiLHsua(maHangSP);
                foreach (var value in loaiSanPham)
                {
                    txt_maHang.Text = value.ma_hang.ToString();
                    txt_tenHang.Text = value.ten_hang.ToString();
                }
            }
        }
        protected void btn_sua_Click(object sender, EventArgs e)
        {
            string maHang = Request.QueryString["mahangsp"].ToString();
            string tenHang = txt_tenHang.Text.Trim();

            if (bllAdmin.sualh(maHang, tenHang))
            {
                Session["success"] = "Sửa loại hàng thành công";
                Response.Redirect("../quan-ly-hang/");
            }
            else
            {
                Session["error"] = "Mã loại đã tồn tại";
            }
        }
    }
}