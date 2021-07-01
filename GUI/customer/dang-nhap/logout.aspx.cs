using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI.customer.dang_nhap
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
            //Session["success"] = "Bạn đã đăng xuất";
            //Response.Redirect(Request.UrlReferrer.ToString());
            Response.Redirect("<alert>Đăng xuất thành công</alert>; window.location ='../trang_chu'");
        }
    }
}