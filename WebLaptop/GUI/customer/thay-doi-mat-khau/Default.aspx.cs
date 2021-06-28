using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;

namespace GUI.customer.thay_doi_mat_khau
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

                Session["tonTaiMK"] = "1";
                if (Session["email"] != null)
                {
                    if (bllCustomer.kiemTraTonTaiMK(Session["email"].ToString()))
                    {
                        Session["tonTaiMK"] = 1;
                    }
                    else
                    {
                        Session["tonTaiMK"] = null;
                    }
                }
            }
        }

        protected void btn_luu_Click(object sender, EventArgs e)
        {

            string tdn_email = "";
            if (Session["email"] != null)
            {
                tdn_email = Session["email"].ToString();
            }
            else
            {
                tdn_email = Session["tdn"].ToString();
            }

            if (Session["tonTaiMK"] == null)
            {
                string mk = txt_taoMK.Text.Trim();
                string reMK = txt_nhapLaiMk.Text.Trim();
                if (mk != reMK)
                {
                    ltr_codeJS.Text = @"<script>
                                        document.getElementById('login-failed').style.display = 'block';
                                    </script>";
                }
                else
                {
                    mk = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(mk, "SHA1");
                    if (bllCustomer.thaydoiMK(tdn_email, mk))
                    {
                        Session["Success"] = "Thay đổi mật khẩu thành công";
                        Response.Redirect(Session["urlBack"].ToString());
                    }
                }
            }
            else
            {
                string mkCu = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(txt_mkCu.Text.Trim(), "SHA1");
                if (bllCustomer.kiemTraMKCu(tdn_email, mkCu))
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
                        mk = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(mk, "SHA1");
                        if (bllCustomer.thaydoiMK(tdn_email, mk))
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
}