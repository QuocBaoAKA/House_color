using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;

namespace GUI.admin
{
    public partial class Default : System.Web.UI.Page
    {
        BLL_Admin bllAdmin = new BLL_Admin();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string tdn = txt_tdn.Text.Trim();
            string mk = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(txt_pw.Text.Trim(), "SHA1");

            if(bllAdmin.dangNhap(tdn, mk))
            {
                Session["taiKhoan"] = tdn;
                Session["success"] = "Đăng nhập thành công";
                Response.Redirect("./thong-ke/");
            }
            else
            {
                ltr_codeJS.Text = @"<script>
                                        document.getElementById('login-failed').style.display = 'block';
                                        document.getElementById('remove').classList.remove('mt-5');
                                        document.getElementById('remove').classList.add('mt-3')
                                    </script>";
            }
        }
    }
}