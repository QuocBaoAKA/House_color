using System;
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
    public partial class hoa_don : System.Web.UI.Page
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
                string maDon = Request.QueryString["madon"];

                var hienThiChiTietDH = bllAdmin.hienThiChiTietDonHang(maDon);

                foreach (var value in hienThiChiTietDH)
                {
                    lb_maDH.Text = value.MaDDH.ToString();
                    lb_ngayDatHang.Text = value.NgayDatHang.ToShortDateString().ToString();
                   
                    //lb_hoTenNguoiNhan.Text = value.ho_ten_giao_hang.ToString();
                    lb_diaChiNhan.Text = value.DiaChiNhanHang.ToString();
                    lb_sdtNguoiNhan.Text = value.SDT.ToString();
                    //lb_emailNguoiNhan.Text = value.em.ToString();
                   
                }

                Session["tongCong"] = bllAdmin.tongTienCuaDH(maDon);

                rpt_sanPham.DataSource = bllAdmin.hienThiSPTrongDH(maDon);
                rpt_sanPham.DataBind();

            }
        }
    }
}