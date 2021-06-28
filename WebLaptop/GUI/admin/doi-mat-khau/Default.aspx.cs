using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;

namespace GUI.admin.doi_mat_khau
{
    public partial class Default : System.Web.UI.Page
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
            }
        }

        protected void btn_luu_Click(object sender, EventArgs e)
        {
            string mkCu = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(txt_mkCu.Text.Trim(), "SHA1");
            if (bllAdmin.kiemTraMKCu(Session["taiKhoan"].ToString(), mkCu))
            {
                string mk = txt_mkMoi.Text.Trim();
                string reMK = txt_nhapLaiMkMoi.Text.Trim();
                if (mk != reMK)
                {
                    ltr_codeJS.Text = @"<script>
                                        document.getElementById('login-failed').style.display = 'block';
                                    </script>";
                }
                else
                {
                    mk = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(txt_mkMoi.Text.Trim(), "SHA1");
                    if (bllAdmin.thaydoiMK(Session["taiKhoan"].ToString(), mk))
                    {
                        Session["Success"] = "Thay đổi mật khẩu thành công";
                        Response.Redirect(Session["urlBack"].ToString());
                    }
                }
            }
            else
            {
                ltr_codeJS.Text = @"<script>
                                        document.getElementById('login-failed1').style.display = 'block';
                                    </script>";
            }
        }
    }
}