using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI.customer.trang_chu
{
    public partial class sonngoaithat : System.Web.UI.Page
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
            SqlDataAdapter da = new SqlDataAdapter("select MaSP, TenSP, MaLH, HinhAnh, MaMau, DonGia from tbl_SanPham where MaLH ='LH01'", kn.con);
            DataTable tb = new DataTable();
            da.Fill(tb);
            rpt_ngoaithat.DataSource = tb;
            rpt_ngoaithat.DataBind();
        }
    }
 }