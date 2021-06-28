using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
using System.Globalization;
using System.Data;

namespace GUI.customer.gio_hang
{
    public partial class dat_hang : System.Web.UI.Page
    {
        BLL_Customer bllCustomer = new BLL_Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["taiKhoan"] == null)
                {
                    Response.Redirect("../trang-chu/");
                }

                if (Session["gioHang"] == null)
                {
                    Response.Redirect("./Default.aspx");
                }

                lb_tongTien.Text = "Tổng cộng: " + String.Format(CultureInfo.InvariantCulture, "{0:#,#}", Session["tongCong"]) + " vnđ";

                string tdn_email = "";
                if (Session["email"] != null)
                {
                    tdn_email = Session["email"].ToString();
                }
                else
                {
                    tdn_email = Session["tdn"].ToString();
                }

                var thongTinKH = bllCustomer.hienThiThongTinKH(tdn_email);

                foreach (var value in thongTinKH)
                {
                    txt_hoTen.Text = value.HoTen;
                    txt_email.Text = value.Email;
                    txt_diaChi.Text = value.DiaChi;
                    txt_sdt.Text = int.Parse("SDT").ToString();
                }
            }
            
        }

        protected void btn_luu_Click(object sender, EventArgs e)
        {
            DataTable gioHang = new DataTable();
            gioHang.Columns.Add("maSP");
            gioHang.Columns.Add("soLuong");
            gioHang = Session["gioHang"] as DataTable;

            string tdn_email = "";
            if (Session["email"] != null)
            {
                tdn_email = Session["email"].ToString();
            }
            else
            {
                tdn_email = Session["tdn"].ToString();
            }

            int maKH = bllCustomer.layMaKH(tdn_email);
            string diaChiGH = txt_diaChi.Text.Trim();
            string sdtGH = txt_sdt.Text.Trim();
            string emailGH = txt_email.Text.Trim();
            string hoTenGH = txt_hoTen.Text.Trim();

            bllCustomer.datHang(gioHang, maKH, diaChiGH, sdtGH, hoTenGH);

            Session["success"] = "Đặt hàng thành công!";
            Session.Remove("gioHang");
            Session.Remove("slSPTrongGioHang");
            Response.Redirect("./dat-hang-thanh-cong.aspx");
        }
    }
}