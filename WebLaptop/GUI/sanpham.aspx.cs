using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class sanpham : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hienthi();
            }
        }
        public void hienthi()
        {
            SqlDataAdapter da = new SqlDataAdapter("select MaSP, TenSP,HinhAnh, DonGia from tbl_SanPham", kn.con);
            DataTable tb = new DataTable();
            da.Fill(tb);
            Repeater1.DataSource = tb;
            Repeater1.DataBind();
        }
    }
  }