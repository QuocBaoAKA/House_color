using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
namespace GUI.customer.DangKy
{
    public partial class _default : System.Web.UI.Page
    {
        BLL_Customer bll = new BLL_Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["taiKhoan"] != null)
            {
                Response.Redirect("../trang-chu/");
            }
        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            string mk = txt_taoMK1.Text.Trim();
            string reMK = txt_nhapLaiMk1.Text.Trim();
            if (mk != reMK)
            {
                ltr_codeJS.Text = @"<script>
                                        document.getElementById('login-failed').style.display = 'block';
                                    </script>";
            }
            else
            {
                ltr_codeJS.Text = "";
                string tdn = txt_tdn.Text.Trim();
                mk = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(mk, "SHA1");
                string hoTen = txt_hoTen.Text.Trim();
                string email = txt_email.Text.Trim();
                string sdt = txt_sdt.Text.Trim();
                string diaChi = txt_diaChi.Text.Trim();

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