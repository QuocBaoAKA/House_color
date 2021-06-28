﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
using System.Data;

namespace GUI.admin.quan_ly_don_hang
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
                if (Request.QueryString["madon"] == "" || Request.QueryString["madon"] == null)
                {
                    Response.Redirect("./Default.aspx");
                }
                int maDon = Int32.Parse(Request.QueryString["madon"]);

                var hienThiChiTietDH = bllAdmin.hienThiChiTietDonHang(maDon);

                foreach (var value in hienThiChiTietDH)
                {
                    lb_maDH.Text = value.ma_gd.ToString();
                    lb_ngayDatHang.Text = value.ngay_dat_hang.Value.ToShortDateString().ToString();
                    lb_trangThai.Text = bllAdmin.layTenTrangThai(Int32.Parse(value.ma_trang_thai.ToString()));
                    lb_maKH.Text = value.ma_kh.ToString();
                    lb_hoTenNguoiNhan.Text = value.ho_ten_giao_hang.ToString();
                    lb_diaChiNhan.Text = value.dia_chi_giao_hang.ToString();
                    lb_sdtNguoiNhan.Text = value.sdt_giao_hang.ToString();
                    lb_emailNguoiNhan.Text = value.email_giao_hang.ToString();
                    hienThiDDLTrangThai(Int32.Parse(value.ma_trang_thai.ToString()));
                }

                lb_tongCong.Text = "Tổng cộng: " + bllAdmin.tongTienCuaDH(maDon) + " vnđ";

                rpt_sanPham.DataSource = bllAdmin.hienThiSPTrongDH(maDon);
                rpt_sanPham.DataBind();

                ltr_inHoaDon.Text = "<a href='./hoa-don.aspx?madon=" + maDon + "' class='btn btn-info btn-sm' target='_blank'>In hóa đơn</a>";
            }
        }

        

        
    }
}