using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
using DAL;
using System.Globalization;

namespace GUI.customer.gio_hang
{
    public partial class Default : System.Web.UI.Page
    {
        BLL_Customer bllCustomer = new BLL_Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["taiKhoan"] == null)
                {
                    Response.Redirect("../trang-chu/");
                }

                if (Session["gioHang"] != null)
                {
                    reloadRPT();
                }
                else
                {
                  ltr_khongCoGioHang.Text += "<div class='text-center text-uppercase'>Không có sản phẩm trong giỏ hàng</div>";
                }

            }
        }

        protected void reloadRPT()
        {
            decimal tongTien = 0;

            DataTable gioHang = new DataTable();
            gioHang.Columns.Add("maSP");
            gioHang.Columns.Add("soLuong");
            gioHang = Session["gioHang"] as DataTable;

            DataTable hienThiGioHang = new DataTable();
            hienThiGioHang.Columns.Add("maSP");
            hienThiGioHang.Columns.Add("tenSP");
            hienThiGioHang.Columns.Add("hinhAnh");
            hienThiGioHang.Columns.Add("gia");
            hienThiGioHang.Columns.Add("sl");
            hienThiGioHang.Columns.Add("slTon");
            hienThiGioHang.Columns.Add("thanhTien");

            foreach (DataRow row_gioHang in gioHang.Rows)
            {
                foreach (var item in bllCustomer.hienThiGioHang(row_gioHang["maSP"].ToString()))
                {
                    var row_hienThiGioHang = hienThiGioHang.NewRow();
                    row_hienThiGioHang["maSP"] = item.MaSP;
                    row_hienThiGioHang["tenSP"] = item.TenSP;
                    row_hienThiGioHang["hinhAnh"] = item.HinhAnh;
                    row_hienThiGioHang["gia"] = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", item.DonGia);
                    row_hienThiGioHang["sl"] = row_gioHang["soLuong"];
                    row_hienThiGioHang["slTon"] = item.Soluongton;
                    row_hienThiGioHang["thanhTien"] = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", item.DonGia * Int32.Parse(row_gioHang["soLuong"].ToString()));
                    tongTien += Decimal.Parse(item.DonGia.ToString()) * Decimal.Parse(row_gioHang["soLuong"].ToString());
                    hienThiGioHang.Rows.Add(row_hienThiGioHang);
                }
            }

            lb_tongTien.Text = "Tổng cộng: " + String.Format(CultureInfo.InvariantCulture, "{0:#,#}", tongTien) + " vnđ";
            Session["tongCong"] = "";
            Session["tongCong"] = tongTien;
            rpt_gioHang.DataSource = hienThiGioHang;
            rpt_gioHang.DataBind();

        }

        protected void lbtn_capNhat_Click(object sender, EventArgs e)
        {
            RepeaterItem item1 = (sender as Button).NamingContainer as RepeaterItem;
            Session["txt"] = "";
            Session["txt"] = (item1.FindControl("txt_slMua") as TextBox).Text;
        }

        protected void rpt_gioHang_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            DataTable gioHang = new DataTable();
            gioHang.Columns.Add("maSP");
            gioHang.Columns.Add("soLuong");
            gioHang = Session["gioHang"] as DataTable;

            int tongSL = 0;

            if (e.CommandName == "capNhat")
            {
                foreach (DataRow r in gioHang.Rows)
                {
                    if (r["maSP"].ToString() == e.CommandArgument.ToString())
                    {
                        r["soLuong"] = Int32.Parse(Session["txt"].ToString());
                    }
                    tongSL += Int32.Parse(r["soLuong"].ToString());
                }

                Session["slSPTrongGioHang"] = tongSL;

                Session["gioHang"] = gioHang;
                Session["success"] = "Cập nhật giỏ hàng thành công";
            }

            if (e.CommandName == "xoa")
            {
                foreach (DataRow r in gioHang.Rows)
                {
                    if (r["maSP"].ToString() == e.CommandArgument.ToString())
                    {
                        r.Delete();
                        break;
                    }
                }
                foreach (DataRow r in gioHang.Rows)
                {
                    tongSL += Int32.Parse(r["soLuong"].ToString());
                }

                Session["slSPTrongGioHang"] = tongSL;

                Session["gioHang"] = gioHang;

                if (tongSL == 0)
                {
                    Session["gioHang"] = null;
                }

                Session["success"] = "Xóa sản phẩm trong giỏ hàng thành công";
                Response.Redirect("./Default.aspx");
            }

            if (Session["gioHang"] != null)
            {
                reloadRPT();
            }

        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            RepeaterItem item1 = (sender as Button).NamingContainer as RepeaterItem;
            Session["txt"] = "";
            Session["txt"] = (item1.FindControl("txt_slMua") as TextBox).Text;
        }
    }
}