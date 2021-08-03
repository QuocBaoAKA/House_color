using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;
namespace GUI.admin.quan_ly_ncc
{
    public partial class Default : System.Web.UI.Page
    {
        BLL_Admin bl = new BLL_Admin();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["taiKhoan"] == null)
                {
                    Response.Redirect("../Default.aspx");
                }

                //rpt_ncc.DataSource = bl.hienThincc();
                //rpt_ncc.DataBind();
            }
        }
    }
}