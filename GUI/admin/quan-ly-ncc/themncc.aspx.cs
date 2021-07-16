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
    public partial class themncc : System.Web.UI.Page
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
            }
        }

        protected void btn_them_Click(object sender, EventArgs e)
        {
            string mancc = txt_mncc.Text.Trim();
            string tenncc = txt_tncc.Text.Trim();
            string diachi = txt_diacho.Text.Trim();
            string email = txt_email.Text.Trim();
            int sdt = int.Parse(txt_sdt.Text.Trim());

            if (bl.themncc(mancc, tenncc, diachi, sdt, email))
            {
                Session["success"] = "Thêm thành công";
                Response.Redirect("../quan-ly-ncc/");
            }
            else
            {
                Session["error"] = "Mã đã tồn tại";
            }
        }
    }
}