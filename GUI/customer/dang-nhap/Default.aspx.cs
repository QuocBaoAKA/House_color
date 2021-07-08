using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;
using ASPSnippets.GoogleAPI;
using System.Web.Script.Serialization;
using ASPSnippets.FaceBookAPI;

namespace GUI
{
    public partial class login : System.Web.UI.Page
    {
        BLL_Customer bll = new BLL_Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            GoogleConnect.ClientId = "684044606396-gss1ijnna0356qcc08g3420gu63g8jbc.apps.googleusercontent.com";
            GoogleConnect.ClientSecret = "XwVuPRJHCbYjXobUKE7Qwp4w";
            GoogleConnect.RedirectUri = Request.Url.AbsoluteUri.Split('?')[0];

            //FaceBookConnect.API_Key = "204065788274765";
            //FaceBookConnect.API_Secret = "53f6a5a2911e038702572085e06b1cca";

            if (!this.IsPostBack)
            {
                if (Session["taiKhoan"] != null)
                {
                    Response.Redirect("customer/trang-chu/trangchu.aspx");
                }

                if (!string.IsNullOrEmpty(Request.QueryString["code"]) && Session["loginGG"] != null)
                {
                    string code = Request.QueryString["code"];
                    string json = GoogleConnect.Fetch("me", code);
                    GoogleProfile profile = new JavaScriptSerializer().Deserialize<GoogleProfile>(json);
                    if (bll.kiemTraTonTaiTK(profile.Email) == true)
                    {
                        Session["taiKhoan"] = bll.layHoTen(profile.Email);
                        Session["email"] = profile.Email;
                        Session["success"] = "Đăng nhập thành công";
                        //Response.Redirect(Session["urlBack"].ToString());
                        Response.Redirect("../trang-chu/");
                    }
                    else
                    {
                        bll.themTK(profile.Email, null, profile.Name, profile.Email, null, null);

                        Session["taiKhoan"] = bll.layHoTen(profile.Email);
                        Session["email"] = profile.Email;
                        Session["success"] = "Đăng nhập thành công";
                        Response.Redirect(Session["urlBack"].ToString());
                    }
                }

                if (!string.IsNullOrEmpty(Request.QueryString["code"]) && Session["loginFB"] != null)
                {
                    string code = Request.QueryString["code"];
                    string data = FaceBookConnect.Fetch(code, "me?fields=id,name,email");
                    FaceBookUser faceBookUser = new JavaScriptSerializer().Deserialize<FaceBookUser>(data);
                    //faceBookUser.PictureUrl = string.Format("https://graph.facebook.com/{0}/picture", faceBookUser.Id);

                    if (bll.kiemTraTonTaiTK(faceBookUser.Email) == true)
                    {
                        Session["taiKhoan"] = bll.layHoTen(faceBookUser.Email);
                        Session["success"] = "Đăng nhập thành công";
                        Response.Redirect(Session["urlBack"].ToString());
                    }
                    else
                    {
                        bll.themTK(faceBookUser.Email, null, faceBookUser.Name, faceBookUser.Email, null, null);

                        Session["taiKhoan"] = bll.layHoTen(faceBookUser.Email);
                        Session["success"] = "Đăng nhập thành công";
                        Response.Redirect(Session["urlBack"].ToString());
                    }
                }

                if (Request.QueryString["error"] == "access_denied")
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Access denied.')", true);
                }
            }
        }
      
        public class GoogleProfile
        {
            public string Id { get; set; }
            public string Name { get; set; }
            public string Picture { get; set; }
            public string Email { get; set; }
            public string Verified_Email { get; set; }
        }

        public class FaceBookUser
        {
            public string Id { get; set; }
            public string Name { get; set; }
            public string UserName { get; set; }
            public string PictureUrl { get; set; }
            public string Email { get; set; }
        }
        protected void btn_gg_Click1(object sender, EventArgs e)
        {
            Session["loginGG"] = 1;
            GoogleConnect.Authorize("profile", "email");
        }


        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Session["loginFB"] = 1;
            FaceBookConnect.Authorize("user_photos,email", Request.Url.AbsoluteUri.Split('?')[0]);
        }

        protected void btn_login_Click1(object sender, EventArgs e)
        {
            string tdn = txt_tdn.Text.Trim();
            string mk = txt_mk.Text.Trim(); /*System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(txt_mk.Text.Trim(), "SHA1");*/

            if (bll.dangNhap(tdn, mk))
            {
                Session["taiKhoan"] = bll.layHoTen(tdn);
                Session["tdn"] = tdn;
                Session["success"] = "Đăng nhập thành công";
                Response.Redirect("../trang-chu/");
            }
            else
            {
                ltr_codeJS.Text = @"<script>
                                        document.getElementById('login-failed').style.display = 'block';
                                    </script>";
            }
           
        }

    }
  }