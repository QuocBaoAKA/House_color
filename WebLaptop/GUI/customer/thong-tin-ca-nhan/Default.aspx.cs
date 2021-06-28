using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;

namespace GUI.customer.thong_tin_ca_nhan
{
    public partial class Default : System.Web.UI.Page
    {
        BLL_Customer bllCustomer = new BLL_Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["taiKhoan"] == null)
                {
                    Response.Redirect("../trang-chu/");
                }

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

                foreach(var value in thongTinKH)
                {
                    txt_hoTen.Text = value.HoTen;
                    txt_email.Text = value.Email;
                   
                    txt_diaChi.Text = value.DiaChi;
                    txt_sdt.Text = int.Parse("sdt").ToString();
                }
            }
        }

        protected void btn_luu_Click(object sender, EventArgs e)
        {
            string tdn_email = "";
            if (Session["email"] != null)
            {
                tdn_email = Session["email"].ToString();
                if (bllCustomer.suaThongTinKH(tdn_email, txt_hoTen.Text, txt_diaChi.Text, tdn_email, int.Parse(txt_sdt.Text)))
                {
                    Session["success"] = "Cập nhật thông tin tài khoản thành công";
                    Response.Redirect(Session["urlBack"].ToString());
                }
            }
            else
            {
                tdn_email = Session["tdn"].ToString();
                if (bllCustomer.suaThongTinKH(tdn_email, txt_hoTen.Text, txt_diaChi.Text, txt_email1.Text, int.Parse(txt_sdt.Text)))
                {
                    Session["success"] = "Cập nhật thông tin tài khoản thành công";
                    Response.Redirect(Session["urlBack"].ToString());
                }
            }

            
        }
    }
}