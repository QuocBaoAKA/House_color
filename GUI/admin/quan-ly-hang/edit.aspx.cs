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
                var loaiSanPham = bllAdmin.hienThimamauDeSua(maHangSP);
                foreach (var value in loaiSanPham)
                {
                    txt_maHang.Text = value.MaMau.ToString();
                    txt_tenHang.Text = value.TenMau.ToString();
                }
            }
        }
        protected void btn_sua_Click(object sender, EventArgs e)
        {
            string mamau = Request.QueryString["mahangsp"].ToString();
            string tenmau = txt_tenHang.Text.Trim();

            if (bllAdmin.suamauSanPham(mamau, tenmau))
            {
                Session["success"] = "Sửa màu sản phẩm thành công";
                Response.Redirect("../quan-ly-hang/");
            }
            else
            {
                Session["error"] = "Mã màu đã tồn tại";
            }
        }
    }
}