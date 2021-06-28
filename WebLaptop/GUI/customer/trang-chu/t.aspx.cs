using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI.customer.trang_chu
{
    public partial class t : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
      
            Literal1.Text = "";
            Literal1.Text += "<script>window.onload = test2()</script>";

        }
    }
}