using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
namespace GUI.customer.trang_chu
{
    public partial class test : System.Web.UI.Page
    {
        BLL_Admin blla = new BLL_Admin();
        BLL_Customer bllc = new BLL_Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Response.Write(bllc.giaCaoNhatTatCaSP());

        }
    }
}