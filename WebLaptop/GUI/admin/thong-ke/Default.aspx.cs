using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

namespace GUI.admin.thong_ke
{
    public partial class Default : System.Web.UI.Page
    {
    //    BLL_Admin bllAdmin = new BLL_Admin();
    //    protected void Page_Load(object sender, EventArgs e)
    //    {
    //        if (!IsPostBack)
    //        {
    //            if (Session["taiKhoan"] == null)
    //            {
    //                Response.Redirect("../Default.aspx");
    //            }
    //            try
    //            {
    //                hienThiDDL();

    //                // thống kê doanh thu tháng trong năm
    //                int nam = Int32.Parse(ddl_nam.SelectedValue.ToString());

    //                var thongKeDoanhThuTungThangTheoNam = bllAdmin.thongKeDoanhThuTungThangTheoNam(nam);

    //                Session["nam"] = nam;
    //                Session["thongKeDoanhThuTungThangTheoNam"] = "";
    //                foreach (var value in thongKeDoanhThuTungThangTheoNam)
    //                {
    //                    Session["thongKeDoanhThuTungThangTheoNam"] += "['" + value.thang + "'," + value.doanhThu + "],";
    //                }

    //                // thống kê số lượng sản phẩm bán theo hãng
    //                var thongKeSLSPBanTheoHang = bllAdmin.thongKeSLSPBanTheoHang();

    //                Session["thongKeSLSPBanTheoHang"] = "";
    //                foreach (var value in thongKeSLSPBanTheoHang)
    //                {
    //                    Session["thongKeSLSPBanTheoHang"] += "['" + value.tenHang + "'," + value.soLuongBan + "],";
    //                }

    //                // thống kê số lượng sản phẩm bán theo loại
    //                var thongKeSLSPBanTheoLoai = bllAdmin.thongKeSLSPBanTheoLoai();

    //                Session["thongKeSLSPBanTheoLoai"] = "";
    //                foreach (var value in thongKeSLSPBanTheoLoai)
    //                {
    //                    Session["thongKeSLSPBanTheoLoai"] += "['" + value.tenLoai + "'," + value.soLuongBan + "],";
    //                }
    //            }
    //            catch
    //            {

    //            }
    //        }
    //    }

    //    void hienThiDDL()
    //    {
    //        var nam = bllAdmin.hienThiNam();
    //        foreach (var value in nam)
    //        {
    //            ddl_nam.Items.Add(new ListItem(value.nam.ToString(), value.nam.ToString()));
    //        }
    //    }

    //    protected void btn_thongKe_Click(object sender, EventArgs e)
    //    {
    //        int nam = Int32.Parse(ddl_nam.SelectedValue.ToString());

    //        var thongKeDoanhThuTungThangTheoNam = bllAdmin.thongKeDoanhThuTungThangTheoNam(nam);

    //        Session["nam"] = nam;
    //        Session["thongKeDoanhThuTungThangTheoNam"] = "";
    //        foreach (var value in thongKeDoanhThuTungThangTheoNam)
    //        {
    //            Session["thongKeDoanhThuTungThangTheoNam"] += "['" + value.thang + "'," + value.doanhThu + "],";
    //        }
    //    }
    //}
}