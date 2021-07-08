using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;
namespace GUI.customer.dang_ky
{
    public partial class defaultdk : System.Web.UI.Page
    {
        BLL_Customer bll = new BLL_Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["taiKhoan"] != null)
            {
                Response.Redirect("../trang-chu/");
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string mk = TextBox2.Text.Trim();
            string reMK = TextBox3.Text.Trim();
            if (mk != reMK)
            {
                ltr_codeJS.Text = @"<script>
                                        document.getElementById('login-failed').style.display = 'block';
                                    </script>";
            }
            else
            {
                ltr_codeJS.Text = "";
                string tdn = TextBox1.Text.Trim();
                mk = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(mk, "SHA1");
                string hoTen = TextBox4.Text.Trim();
                string email = TextBox5.Text.Trim();
                string sdt = TextBox6.Text.Trim();
                string diaChi = TextBox7.Text.Trim();

                if (bll.kiemTraTDN(tdn) == false)
                {
                    if (bll.kiemTraEmail(email) == false)
                    {
                        if (bll.themTK(tdn, mk, hoTen, email, sdt, diaChi))
                        {
                            Session["success"] = "Đăng ký thành công";
                            Response.Redirect("../dang-nhap/");
                        }
                    }
                    else
                    {
                        Session["error"] = "Email đã tồn tại";
                    }
                }
                else
                {
                    Session["error"] = "Tên đăng nhập đã tồn tại";
                }
            }
        }
    }
}