using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;
using System.Globalization;
using System.IO;

namespace GUI.admin.quan_ly_sp
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
                if (Request.QueryString["maSP"] == "" || Request.QueryString["maSP"] == null)
                {
                    Response.Redirect("./Default.aspx");
                }

                string maSP = (Request.QueryString["maSP"]);
                var sanPham = bllAdmin.hienThiSanPhamDeSua(maSP);
                foreach (var value in sanPham)
                {
                    txt_tenSP.Text = value.TenSP.ToString();
                    txt_soLuong.Text = value.Soluongton.ToString();
                    txt_gia.Text = value.DonGia.ToString();
                    txt_moTa.Text = value.MoTa.ToString();
                    txt_tenAnh.Text = value.HinhAnh.ToString();
                    hienThiHinhAnhSauKhiUp.ImageUrl = "../../public/images/product/" + value.HinhAnh.ToString();
                    hienThiDDLLoaiSP(value.MaLH.ToString());
                    hienThiDDLHangSP(value.MaMau.ToString());
                }
            }
        }

        void hienThiDDLLoaiSP(string selectMaLoai)
        {
            var loaiSP = bllAdmin.hienThiLH();
            foreach (var value in loaiSP)
            {
                ddl_loaiSP.Items.Add(new ListItem(value.MaLH + " - " + value.TenLH, value.MaLH));
                if (value.MaLH == selectMaLoai)
                {
                    ddl_loaiSP.SelectedValue = value.MaLH;
                }
            }
        }

        void hienThiDDLHangSP(string selectMaHang)
        {
            var hangSP = bllAdmin.hienThimamau();
            foreach (var value in hangSP)
            {
                ddl_hangSP.Items.Add(new ListItem(value.MaMau + " - " + value.TenMau, value.MaMau));
                if (value.MaMau == selectMaHang)
                {
                    ddl_hangSP.SelectedValue = value.MaMau;
                }
            }
        }

        bool CheckFileType(string fileName)
        {
            string ext = Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".png":
                    return true;
                case ".jpg":
                    return true;
                default:
                    return false;
            }
        }

        protected void btn_sua_Click(object sender, EventArgs e)
        {
            string maSP = Request.QueryString["maSP"];
            string tenSP = txt_tenSP.Text.Trim();
            string maLoai = ddl_loaiSP.SelectedValue.ToString();
            string mamau = ddl_hangSP.SelectedValue.ToString();
            int soLuong = Int32.Parse(txt_soLuong.Text.Trim());
            long gia = long.Parse(txt_gia.Text.Trim());
            string moTa = txt_moTa.Text.Trim();
            string fileName = hienThiHinhAnhSauKhiUp.ImageUrl.Split("/".ToCharArray())[5];
            string filePath = "";
            
            if (ful_hinhAnh.HasFile)
            {
                if (CheckFileType(ful_hinhAnh.FileName))
                {
                    fileName = DateTime.Now.ToString("ddMMyyyy_hhmmss_tt_") + ful_hinhAnh.FileName;
                    filePath = MapPath("../../public/images/product/" + fileName);
                    ful_hinhAnh.SaveAs(filePath);
                }
                else
                {
                    Session["error"] = "Vui lòng chọn tập tin hình ảnh có định dạng png hoặc jpg";
                }
            }

            if (bllAdmin.suaSanPham(maSP, tenSP, maLoai,mamau, fileName, moTa, gia,soLuong))
            {
                Session["success"] = "Cập nhật sản phẩm thành công";
                Response.Redirect("../quan-ly-sp/");
            }
            else
            {
                Session["error"] = "Tên sản phẩm đã tồn tại";
                txt_tenSP.Focus();
            }
        }
    }
}