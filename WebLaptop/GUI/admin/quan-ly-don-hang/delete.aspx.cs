using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;
namespace GUI.admin.quan_ly_don_hang
{
    public partial class delete : System.Web.UI.Page
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
                if (Request.QueryString["madon"] == "" || Request.QueryString["madon"] == null)
                {
                    Response.Redirect("./Default.aspx");
                }

                int maDon = Int32.Parse(Request.QueryString["madon"].ToString());

                if (bllAdmin.xoaDonHang(maDon))
                {
                    Session["success"] = "Xóa đơn hàng thành công";
                    Response.Redirect("../quan-ly-don-hang/");
                }
            }
        }
    }
}