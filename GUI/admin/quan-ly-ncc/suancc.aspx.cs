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
    public partial class suancc : System.Web.UI.Page
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

                txt_tncc.Focus();
                string mancc = Request.QueryString["mancc"].ToString();
                var ncc = bl.hienThinccdesua(mancc);
                foreach (var value in ncc)
                {
                    txt_mncc.Text = value.MaNCC.ToString();
                    txt_tncc.Text = value.TenNCC.ToString();
                    txt_diacho.Text = value.DiaChi.ToString();
                    txt_email.Text = value.Email.ToString();
                    txt_sdt.Text = value.SDT.ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mancc = Request.QueryString["MaNCC"].ToString();
            string tenncc = txt_tncc.Text.Trim();
            string diachi = txt_diacho.Text.Trim();
            string email = txt_email.Text.Trim();
            int sdt = int.Parse(txt_sdt.Text.Trim());

            if (bl.suancc(mancc, tenncc, diachi, email, sdt))
            {
                Session["success"] = "Sửa thành công";
                Response.Redirect("../quan-ly-ncc/");
            }
            else
            {
                Session["error"] = "Mã loại đã tồn tại";
            }
        }
    }
}