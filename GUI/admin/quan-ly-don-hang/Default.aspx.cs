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
    public partial class Default : System.Web.UI.Page
    {
        BLL_Admin bllAdmin = new BLL_Admin();

        protected void Page_Load(object sender, EventArgs e)
        {
            //    if (!IsPostBack)
            //    {
            //        if (Session["taiKhoan"] == null)
            //        {
            //            Response.Redirect("../Default.aspx");
            //        }

            //        rpt_donHang.DataSource = bllAdmin.hienThiDonHang();
            //        rpt_donHang.DataBind();
            //    }
            //}

            //public string colorFortd(string trangThai)
            //{
            //    if (trangThai == "Chờ duyệt")
            //    {
            //        return "<td class='text-danger'>" + trangThai + "</td>";
            //    }
            //    else
            //    {
            //        return "<td class='text-success'>" + trangThai + "</td>";
            //    }
            //}
        }
    }
}