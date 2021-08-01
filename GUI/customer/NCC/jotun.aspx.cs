using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
namespace GUI.customer.NCC
{
    public partial class jotun : System.Web.UI.Page
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
            SqlDataAdapter da = new SqlDataAdapter("select MaSP, TenSP, MaLH, HinhAnh, MaMau, MaNCC, DonGia from tbl_SanPham where MaNCC = 'JT'", kn.con);
            DataTable tb = new DataTable();
            da.Fill(tb);
            rpt_jotun.DataSource = tb;
            rpt_jotun.DataBind();
        }
    }
}