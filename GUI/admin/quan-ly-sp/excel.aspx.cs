using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using ExcelDataReader;
using BLL;
using DAL;

namespace GUI.admin.quan_ly_sp
{
    public partial class excel : System.Web.UI.Page
    {
        BLL_Admin bllAdmin = new BLL_Admin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_upload_Click(object sender, EventArgs e)
        {
            //string excelPath = Server.MapPath("../../public/excel/") + Path.GetFileName(ful_excel.PostedFile.FileName);
            //ful_excel.SaveAs(excelPath);
            //using (var stream = File.Open(excelPath, FileMode.Open, FileAccess.Read))
            //{
            //    using (var reader = ExcelReaderFactory.CreateReader(stream))
            //    {
            //        do
            //        {
            //            if (reader.Name == "tbl_LoaiSP")
            //            {
            //                while (reader.Read())
            //                {
            //                    if (reader.Depth > 0)
            //                    {
            //                        string maLoai = reader.GetString(0);
            //                        string tenLoai = reader.GetString(1);

            //                        if(bllAdmin.themLoaiSanPham(maLoai, tenLoai))
            //                        {
            //                            continue;
            //                        }
            //                        else
            //                        {
            //                            continue;
            //                        }
            //                    }
            //                }
            //            }

            //            if (reader.Name == "tbl_Hang")
            //            {
            //                while (reader.Read())
            //                {
            //                    if (reader.Depth > 0)
            //                    {
            //                        string maHang = reader.GetString(0);
            //                        string tenHang = reader.GetString(1);

            //                        if(bllAdmin.themHangSanPham(maHang, tenHang))
            //                        {
            //                            continue;
            //                        }
            //                        else
            //                        {
            //                            continue;
            //                        }
            //                    }
            //                }
            //            }

            //            if (reader.Name == "tbl_SanPham")
            //            {
            //                while (reader.Read())
            //                {
            //                    if (reader.Depth > 0)
            //                    {
            //                        string tenSP = reader.GetString(0);
            //                        string moTa = reader.GetString(1);
            //                        float gia = Int32.Parse(reader.GetValue(2).ToString());
            //                        int slTon = Int32.Parse(reader.GetValue(3).ToString()); 
            //                        string hinhAnh = reader.GetString(4);
            //                        string maLoai = reader.GetString(5);
            //                        string maHang = reader.GetString(6);

            //                        bllAdmin.themSanPham(tenSP, maLoai, slTon, gia, hinhAnh, moTa, maHang);
            //                    }
            //                }
            //            }
            //        } while (reader.NextResult());
            //    }
            //}
            //Session["success"] = "Thêm sản phẩm từ excel thành công";
            //Response.Redirect("../quan-ly-sp/");

        }
    }
}