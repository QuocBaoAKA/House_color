using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;
namespace GUI
{
    public partial class chitietsp : System.Web.UI.Page
    {
        BLL_Customer bl = new BLL_Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["masp"] == "" || Request.QueryString["masp"] == null)
                {
                    Response.Redirect("../tat-ca-san-pham/");
                }


                string id = (Request.QueryString["masp"].ToString());
                Repeater1.DataSource = bl.hienThiChiTietSP(id);
                Repeater1.DataBind();
            }
        }
    }
}