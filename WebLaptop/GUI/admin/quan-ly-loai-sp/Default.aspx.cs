using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace GUI.admin.quan_ly_loai_sp
{
    public partial class Default1 : System.Web.UI.Page
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

                rpt_bangSP.DataSource = bllAdmin.hienThiLoaiSP();
                rpt_bangSP.DataBind();
            }
        }
    }
}