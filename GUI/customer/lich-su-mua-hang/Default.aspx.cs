using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

namespace GUI.customer.lich_su_mua_hang
{
    public partial class Default : System.Web.UI.Page
    {
        BLL_Customer bllCustomer = new BLL_Customer();

        protected void Page_Load(object sender, EventArgs e)
        {
            //    if (!IsPostBack)
            //    {
            //        if (Session["taiKhoan"] == null)
            //        {
            //            Response.Redirect("../trang-chu/");
            //        }

            //        string tdn_email = "";
            //        if (Session["email"] != null)
            //        {
            //            tdn_email = Session["email"].ToString();
            //        }
            //        else
            //        {
            //            tdn_email = Session["tdn"].ToString();
            //        }

            //        int maKH = bllCustomer.layM(tdn_email);

            //        rpt_donHang.DataSource = bllCustomer.lichSuDatHang(maKH);
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