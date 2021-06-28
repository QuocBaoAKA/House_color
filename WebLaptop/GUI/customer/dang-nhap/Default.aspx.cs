using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
using ASPSnippets.GoogleAPI;
using ASPSnippets.FaceBookAPI;
using System.Web.Script.Serialization;

namespace GUI.customer.dang_nhap
{
    public partial class Default : System.Web.UI.Page
    {
        BLL_Customer bllCustomer = new BLL_Customer();
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    GoogleConnect.ClientId = "33386015156-6l69s6kutqqeks48i9o9opu70qm9o34k.apps.googleusercontent.com";
        //    GoogleConnect.ClientSecret = "3eAolfro2Ggi2bmXqDdb2KfG";
        //    GoogleConnect.RedirectUri = Request.Url.AbsoluteUri.Split('?')[0];

        //    //FaceBookConnect.API_Key = "327805077749478";
        //    //FaceBookConnect.API_Secret = "db49c3cb2e175b0d8a828aa3d7f232eb";

        //    if (!this.IsPostBack)
        //    {
        //        if(Session["taiKhoan"] != null)
        //        {
        //            Response.Redirect("../trang-chu/");
        //        }

        //        if (!string.IsNullOrEmpty(Request.QueryString["code"]) && Session["loginGG"] != null)
        //        {
        //            string code = Request.QueryString["code"];
        //            string json = GoogleConnect.Fetch("me", code);
        //            GoogleProfile profile = new JavaScriptSerializer().Deserialize<GoogleProfile>(json);
        //            if (bllCustomer.kiemTraTonTaiTK(profile.Email) == true)
        //            {
        //                Session["taiKhoan"] = bllCustomer.layHoTen(profile.Email);
        //                Session["email"] = profile.Email;
        //                Session["success"] = "Đăng nhập thành công";
        //                Response.Redirect(Session["urlBack"].ToString());
        //            }
        //            else
        //            {
        //                bllCustomer.themTK(profile.Email, profile.Name, profile.Email,null, null, null, null);

        //                Session["taiKhoan"] = bllCustomer.layHoTen(profile.Email);
        //                Session["email"] = profile.Email;
        //                Session["success"] = "Đăng nhập thành công";
        //                Response.Redirect(Session["urlBack"].ToString());
        //            }
        //        }

        //        //if (!string.IsNullOrEmpty(Request.QueryString["code"]) && Session["loginFB"] != null)
        //        //{
        //        //    string code = Request.QueryString["code"];
        //        //    string data = FaceBookConnect.Fetch(code, "me?fields=id,name,email");
        //        //    FaceBookUser faceBookUser = new JavaScriptSerializer().Deserialize<FaceBookUser>(data);
        //        //    //faceBookUser.PictureUrl = string.Format("https://graph.facebook.com/{0}/picture", faceBookUser.Id);

        //        //    if (bllCustomer.kiemTraTonTaiTK(faceBookUser.Email) == true)
        //        //    {
        //        //        Session["taiKhoan"] = bllCustomer.layHoTen(faceBookUser.Email);
        //        //        Session["success"] = "Đăng nhập thành công";
        //        //        Response.Redirect(Session["urlBack"].ToString());
        //        //    }
        //        //    else
        //        //    {
        //        //        bllCustomer.themTK(faceBookUser.Email, null, faceBookUser.Name, faceBookUser.Email, null, null);

        //        //        Session["taiKhoan"] = bllCustomer.layHoTen(faceBookUser.Email);
        //        //        Session["success"] = "Đăng nhập thành công";
        //        //        Response.Redirect(Session["urlBack"].ToString());
        //        //    }
        //        //}

        //        if (Request.QueryString["error"] == "access_denied")
        //        {
        //            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Access denied.')", true);
        //        }
        //    }
        //}

        //protected void btn_login_Click(object sender, EventArgs e)
        //{
        //    string tdn = txt_tdn.Text.Trim();
        //    string mk = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(txt_mk.Text.Trim(), "SHA1");

        //    if (bllCustomer.dangNhap(tdn, mk))
        //    {
        //        Session["taiKhoan"] = bllCustomer.layHoTen(tdn);
        //        Session["tdn"] = tdn;
        //        Session["success"] = "Đăng nhập thành công";
        //        Response.Redirect(Session["urlBack"].ToString());
        //    }
        //    else
        //    {
        //        ltr_codeJS.Text = @"<script>
        //                                document.getElementById('login-failed').style.display = 'block';
        //                            </script>";
        //    }
        //}

        //protected void btn_gg_Click(object sender, EventArgs e)
        //{
        //    Session["loginGG"] = 1;
        //    GoogleConnect.Authorize("profile", "email");
        //}

        //public class GoogleProfile
        //{
        //    public string Id { get; set; }
        //    public string Name { get; set; }
        //    public string Picture { get; set; }
        //    public string Email { get; set; }
        //    public string Verified_Email { get; set; }
        //}

        //public class FaceBookUser
        //{
        //    public string Id { get; set; }
        //    public string Name { get; set; }
        //    public string UserName { get; set; }
        //    public string PictureUrl { get; set; }
        //    public string Email { get; set; }
        //}

        //protected void btn_fb_Click(object sender, EventArgs e)
        //{
        //    Session["loginFB"] = 1;
        //    FaceBookConnect.Authorize("user_photos,email", Request.Url.AbsoluteUri.Split('?')[0]);
        //}
    }
}