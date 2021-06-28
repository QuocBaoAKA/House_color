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
    public partial class edit : System.Web.UI.Page
    {
        BLL_Admin bllAdmin = new BLL_Admin();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["taiKhoan"] == null)
                {
                    Response.Redirect("../Default.aspx");
                }
                if (Request.QueryString["maloaisp"] == "" || Request.QueryString["maloaisp"] == null)
                {
                    Response.Redirect("./Default.aspx");
                }

                txt_tenLoai.Focus();
                string maLoaiSP = Request.QueryString["maLoaiSP"].ToString();
                var loaiSanPham = bllAdmin.hienThiLoaiSanPhamDeSua(maLoaiSP);
                foreach (var value in loaiSanPham)
                {
                    txt_maLoai.Text = value.MaLH.ToString();
                    txt_tenLoai.Text = value.TenLH.ToString();
                }
            }
        }

        protected void btn_sua_Click(object sender, EventArgs e)
        {
            string maLoai = Request.QueryString["maLoaiSP"].ToString();
            string tenLoai = txt_tenLoai.Text.Trim();

            if (bllAdmin.suaLoaiSanPham(maLoai, tenLoai))
            {
                Session["success"] = "Sửa loại sản phẩm thành công";
                Response.Redirect("../quan-ly-loai-sp/");
            }
            else
            {
                Session["error"] = "Mã loại đã tồn tại";
            }
        }
    }
}