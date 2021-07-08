using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
namespace GUI.customer.danh_muc_san_pham
{
    public partial class defaultc : System.Web.UI.Page
    {
        BLL_Customer bll = new BLL_Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["maloai"] == "" || Request.QueryString["maloai"] == null)
            {
                Response.Redirect("../tat-ca-san-pham/");
            }
            string maLoai = Request.QueryString["maloai"];
            Repeater1.DataSource = bll.hienThiSPTheoLoai(maLoai);
            Repeater1.DataBind();

            //lb_tenDanhMuc.Text = "";
            //lb_tenDanhMuc.Text += bllCustomer.layTenLoaiSP(maLoai);
        }
    }
}