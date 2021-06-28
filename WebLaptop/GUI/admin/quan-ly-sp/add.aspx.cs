﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;
using System.IO;

namespace GUI.admin.quan_ly_sp
{
    public partial class add : System.Web.UI.Page
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

                hienThiDDLLoaiSP();
                hienThimausp();
            }
        }

        void hienThiDDLLoaiSP()
        {
            var loaiSP = bllAdmin.hienThiLH();
            foreach (var value in loaiSP)
            {
                drop2.Items.Add(new ListItem(value.MaLH + " - " + value.MaLH, value.MaLH));
            }
        }

        void hienThimausp()
        {
            var hangmau = bllAdmin.hienThimamau();
            foreach (var value in hangmau)
            {
                drop1.Items.Add(new ListItem(value.MaMau + " - " + value.TenMau, value.MaMau));
            }
        }

        protected void btn_them_Click(object sender, EventArgs e)
        {
            string masp = TextBox1.Text.Trim();
            string tenSP = txt_tenSP.Text.Trim();
            string maLoai = drop1.SelectedValue.ToString();
            string mamau = drop2.SelectedValue.ToString();
           
            
            string moTa = txt_moTa.Text.Trim();
            long gia = long.Parse(txt_gia.Text.Trim());
            if (CheckFileType(ful_hinhAnh.FileName))
            {
                string fileName = DateTime.Now.ToString("ddMMyyyy_hhmmss_tt_") + ful_hinhAnh.FileName;
                string filePath = MapPath("../../public/images/product/" + fileName);              
                ful_hinhAnh.SaveAs(filePath);

                if (bllAdmin.themSanPham(masp, tenSP, maLoai,mamau,fileName, moTa,gia ))
                {
                    Session["success"] = "Thêm sản phẩm thành công";
                    Response.Redirect("../quan-ly-sp/");
                }
                else
                {
                    Session["error"] = "Tên sản phẩm đã tồn tại";
                    txt_tenSP.Focus();
                }
            } else
            {
                Session["error"] = "Vui lòng chọn tập tin hình ảnh có định dạng png hoặc jpg";
            }  
        }

        bool CheckFileType(string fileName)
        {
            string ext = Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".png":
                    return true;
                case ".jpg":
                    return true;
                default:
                    return false;
            }
        }
    }
}