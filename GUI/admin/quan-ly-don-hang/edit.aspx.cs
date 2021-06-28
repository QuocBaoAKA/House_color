using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
using System.Data;

namespace GUI.admin.quan_ly_don_hang
{
    public partial class edit : System.Web.UI.Page
    {
        BLL_Admin bllAdmin = new BLL_Admin();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["taiKhoan"] == null)
                {
                    Response.Redirect("../Default.aspx");
                }
                if (Request.QueryString["madon"] == "" || Request.QueryString["madon"] == null)
                {
                    Response.Redirect("./Default.aspx");
                }
                string maDon = Request.QueryString["madon"];

                var hienThiChiTietDH = bllAdmin.hienThiChiTietDonHang(maDon);

                foreach (var value in hienThiChiTietDH)
                {
                    lb_maDH.Text = value.MaDDH.ToString();
                    lb_ngayDatHang.Text = value.NgayDatHang.ToShortDateString().ToString();
                    //lb_trangThai.Text = bllAdmin.layTenTrangThai(Int32.Parse(value.ma_trang_thai.ToString()));
                    lb_maKH.Text = value.ID_TK.ToString();
                    //lb_hoTenNguoiNhan.Text = value.ho_ten_giao_hang.ToString();
                    lb_diaChiNhan.Text = value.DiaChiNhanHang.ToString();
                    lb_sdtNguoiNhan.Text = value.SDT.ToString();
                    //lb_emailNguoiNhan.Text = value.email_giao_hang.ToString();
                    //hienThiDDLTrangThai(Int32.Parse(value.ma_trang_thai.ToString()));
                }

                lb_tongCong.Text = "Tổng cộng: " + bllAdmin.tongTienCuaDH(maDon) + " vnđ";

                rpt_sanPham.DataSource = bllAdmin.hienThiSPTrongDH(maDon);
                rpt_sanPham.DataBind();

                ltr_inHoaDon.Text = "<a href='./hoa-don.aspx?madon=" + maDon + "' class='btn btn-info btn-sm' target='_blank'>In hóa đơn</a>";
            }
        }

        //void hienThiDDLTrangThai(int selectMaTT)
        //{
        //    var tt = bllAdmin.hienThiTrangThai();
        //    foreach (var value in tt)
        //    {
        //        ddl_trangThai.Items.Add(new ListItem(value.ten_trang_thai, value.ma_trang_thai.ToString()));
        //        if (value.ma_trang_thai == selectMaTT)
        //        {
        //            ddl_trangThai.SelectedValue = value.ma_trang_thai.ToString();
        //        }
        //    }
        //}

        //protected void btn_sua_Click(object sender, EventArgs e)
        //{
        //    int maDon = Int32.Parse(Request.QueryString["madon"]);
        //    int maTT = Int32.Parse(ddl_trangThai.SelectedValue.ToString());
        //    bllAdmin.capNhatTrangThai(maDon, maTT);

        //    Session["success"] = "Cập nhật trạng thái đơn hàng thành công";
        //    Response.Redirect("../quan-ly-don-hang/");

        //}
    }
}