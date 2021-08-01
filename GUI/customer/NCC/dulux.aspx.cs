using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
using System.Data.SqlClient;
using System.Data;

namespace GUI.customer.NCC
{
    public partial class dulux : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        BLL_Customer bl = new BLL_Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hienThincc();
            }
        }
        public void hienThincc()
        {
            SqlDataAdapter da = new SqlDataAdapter("select MaSP, TenSP, MaLH, HinhAnh, MaMau, MaNCC, DonGia from tbl_SanPham where MaNCC = 'DL'", kn.con);
            DataTable tb = new DataTable();
            da.Fill(tb);
            Repeater1.DataSource = tb;
            Repeater1.DataBind();
        }
    }
}