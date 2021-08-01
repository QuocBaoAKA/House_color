using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;

namespace GUI.customer.customer_masterpage
{
    public partial class customer : System.Web.UI.MasterPage
    {
        BLL_Customer bllCustomer = new BLL_Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    rpt_danhMucSP.DataSource = bllCustomer.hienThiDanhMucSP();
            //    rpt_danhMucSP.DataBind();
            //}
        }
        protected void lbtn_thongTinCaNhan_Click(object sender, EventArgs e)
        {
            Session["urlBack"] = HttpContext.Current.Request.Url.AbsoluteUri;
            Response.Redirect("../thong-tin-ca-nhan/");
        }

        protected void lbtn_doiMK_Click(object sender, EventArgs e)
        {
            Session["urlBack"] = HttpContext.Current.Request.Url.AbsoluteUri;
            Response.Redirect("../thay-doi-mat-khau/");
        }

        protected void lbtn_dangKy_Click(object sender, EventArgs e)
        {
            Session["urlBack"] = HttpContext.Current.Request.Url.AbsoluteUri;
            Response.Redirect("../DangKy/");
        }

        protected void lbtn_timKiem_Click(object sender, EventArgs e)
        {
            //Session["tuKhoaTimKiem"] = TextBox2.Text.Trim();
            //Response.Redirect("../tim-kiem/");
        }

        protected void linkbtn_dangNhap_Click1(object sender, EventArgs e)
        {
            Session["urlBack"] = HttpContext.Current.Request.Url.AbsoluteUri;
            Response.Redirect("../dang-nhap/");
        }
    }
}