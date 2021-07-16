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
    public partial class xoancc : System.Web.UI.Page
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
                if (Request.QueryString["mancc"] == "" || Request.QueryString["mancc"] == null)
                {
                    Response.Redirect("./Default.aspx");
                }

                string mancc = Request.QueryString["mancc"].ToString();

                if (bl.xoancc(mancc))
                {
                    Session["success"] = "Xóa thành công";
                    //ClientScript.RegisterStartupScript(this.GetType(), "Deleted!", "Xóa thành công", true); 
                    Response.Redirect("../quan-ly-ncc/");
                }
                else
                {
                    Session["error"] = "Không thể xóa do tồn tại liên kết";
                    Response.Redirect("../quan-ly-ncc/");
                }
            }
        }
    }
}