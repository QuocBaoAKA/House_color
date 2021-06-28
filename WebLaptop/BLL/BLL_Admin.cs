using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Globalization;
using System.IO;

namespace BLL
{
    public class BLL_Admin
    {
        public string srcDir = "D:\\2021 - 2022\\DO AN\\WebLaptop\\GUI\\public\\images\\product\\";

        WBLKDataContext db = new WBLKDataContext();
        
        // -- Đăng nhập --
        #region Đăng nhập
        public bool dangNhap(string tdn, string mk)
        {
            int result = db.tbl_KhachHangs.Where(tk => tk.Username == tdn && tk.Password == mk).Count();
            if (result > 0)
            {
                return true;
            } 
            return false;
        }
        #endregion

        // -- Thay đổi mật khẩu --
        #region Thay đổi mật khẩu

        public bool thaydoiMK(string tdn, string mk)
        {
            var timKiem = db.tbl_KhachHangs.Where(tk => tk.Username == tdn).FirstOrDefault();

            tbl_KhachHang tkSua = timKiem;
            tkSua.Password = mk;

            try
            {
                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool kiemTraMKCu(string tdn, string mk)
        {
            int query = db.tbl_KhachHangs.Where(tk => tk.Username == tdn && tk.Password == mk).Count();
            if (query > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        #endregion

        // -- Quản lý hãng --
        #region Quản lý hãng
        public List<tbl_LoaiHang> hienThiLH()
        {
            var query = from lsp in db.tbl_LoaiHangs
                        select lsp;
            return query.ToList();
        }
        public List<tbl_MaMau> hienThimamau()
        {
            var query = from lsp in db.tbl_MaMaus
                        select lsp;
            return query.ToList();
        }
        public bool themLH(string maLoai, string tenLoai)
        {
            tbl_LoaiHang hsp = new tbl_LoaiHang();
            hsp.MaLH = maLoai;
            hsp.TenLH = tenLoai;

            db.tbl_LoaiHangs.InsertOnSubmit(hsp);
            try
            {
                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }

        }
        public bool xoaLH(string malh)
        {
            var timKiem = db.tbl_LoaiHangs.Where(hsp => hsp.MaLH == malh).FirstOrDefault();
            tbl_LoaiHang hspXoa = timKiem;
            db.tbl_LoaiHangs.DeleteOnSubmit(hspXoa);
            try
            {
                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public List<tbl_LoaiHang> hienThiLHsua(string malh)
        {
            return db.tbl_LoaiHangs.Where(hsp => hsp.MaLH == malh).ToList();
        }

        public bool sualh(string malh, string tenlh)
        {
            var timKiem = db.tbl_LoaiHangs.Where(hsp => hsp.MaLH == malh).FirstOrDefault();
            tbl_LoaiHang hspSua = timKiem;
            hspSua.TenLH = tenlh;

            try
            {
                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }

        }
        #endregion

        // -- Quản lý loại sản phẩm --
        //#region Quản lý loại sản phẩm
        //public List<tbl_LoaiHang> hienThiLoaiSP()
        //{
        //    var query = from lsp in db.tbl_LoaiHangs
        //                select lsp;
        //    return query.ToList();
        //}

        //public bool themLoaiSanPham(string maLoai, string tenLoai)
        //{
        //    tbl_LoaiSP lsp = new tbl_LoaiSP();
        //    lsp.ma_loai = maLoai;
        //    lsp.ten_loai = tenLoai;
           
        //    db.tbl_LoaiSPs.InsertOnSubmit(lsp);
        //    try
        //    {
        //        db.SubmitChanges();
        //        return true;
        //    }
        //    catch
        //    {
        //        return false;
        //    }

        //}

        //public bool xoaLoaiSanPham(string maLoai)
        //{
        //    var timKiem = db.tbl_LoaiSPs.Where(lsp => lsp.ma_loai == maLoai).FirstOrDefault();
        //    tbl_LoaiSP lspXoa = timKiem;
        //    db.tbl_LoaiSPs.DeleteOnSubmit(lspXoa);
        //    try
        //    {
        //        db.SubmitChanges();
        //        return true;
        //    }
        //    catch
        //    {
        //        return false;
        //    }
        //}

        //public List<tbl_LoaiSP> hienThiLoaiSanPhamDeSua(string maLoaiSP)
        //{
        //    return db.tbl_LoaiSPs.Where(lsp => lsp.ma_loai == maLoaiSP).ToList();
        //}

        //public bool suaLoaiSanPham(string maLoai, string tenLoai)
        //{
        //    var timKiem = db.tbl_LoaiSPs.Where(lsp => lsp.ma_loai == maLoai).FirstOrDefault();
        //    tbl_LoaiSP lspSua = timKiem;
        //    lspSua.ten_loai = tenLoai;

        //    try
        //    {
        //        db.SubmitChanges();
        //        return true;
        //    }
        //    catch
        //    {
        //        return false;
        //    }

        //}
       

        // -- Quản lý sản phẩm --
        #region Quản lý sản phẩm
        public IEnumerable hienThiSanPham()
        {
            var query = from sp in db.tbl_SanPhams
                        from lsp in db.tbl_LoaiHangs
                        from hsp in db.tbl_MaMaus
                        where sp.MaLH == lsp.MaLH
                        && sp.MaMau == hsp.MaMau
                        orderby sp.MaSP descending
                        select new
                        {
                            maSP = sp.MaSP,
                            tenSP = sp.TenSP,
                            gia = String.Format(CultureInfo.InvariantCulture,"{0:#,#}", sp.DonGia),
                          
                            hinhAnh = sp.HinhAnh,
                            tenLoai = lsp.TenLH,
                            tenmau = hsp.TenMau,
                            maLoai = lsp.MaLH,
                            mamau = hsp.MaMau
                        };
            return query.ToList();
        }

        public bool themSanPham(string masp, string tenSP, string maLoai, string mamau,string hinhAnh, string moTa,float gia)
        {
            tbl_SanPham sp = new tbl_SanPham();
            sp.MaSP = masp;
            sp.TenSP = tenSP;
            sp.MaLH = maLoai;
            sp.MaMau = mamau;
        
            sp.HinhAnh = hinhAnh;
            sp.MoTa = moTa;
            sp.DonGia = gia;
            db.tbl_SanPhams.InsertOnSubmit(sp);
            try
            {
                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }

        }

        public bool xoaSanPham(string maSP)
        {
            var timKiem = db.tbl_SanPhams.Where(sp => sp.MaSP == maSP).FirstOrDefault();
            tbl_SanPham spXoa = timKiem;

            string duongDanHinhAnh = srcDir + timKiem.HinhAnh;
            File.Delete(duongDanHinhAnh);
            db.tbl_SanPhams.DeleteOnSubmit(spXoa);
            try
            {
                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public List<tbl_SanPham> hienThiSanPhamDeSua(string maSP)
        {
            return db.tbl_SanPhams.Where(sp => sp.MaSP == maSP).ToList();
        }

        public bool suaSanPham(string maSP, string tenSP, string maLoai, string mamau, string hinhAnh, string moTa, float dongia, int soLuong)
        {
            var timKiem = db.tbl_SanPhams.Where(sp => sp.MaSP == maSP).FirstOrDefault();
           
            tbl_SanPham spSua = timKiem;
            spSua.TenSP = tenSP;
            spSua.MaLH = maLoai;
            spSua.MaMau = mamau;
            spSua.HinhAnh = hinhAnh;
            spSua.MoTa = moTa;
            spSua.DonGia = dongia;
            spSua.Soluongton = soLuong;
            try
            {
                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        #endregion

        // -- Quản lý khách hàng --
        #region Quản lý khách hàng
        public IEnumerable hienThiKH()
        {
            return db.tbl_KhachHangs.OrderBy(kh => kh.ID_TK).ToList();
        }
        #endregion

        // -- Quản lý đơn hàng --
        #region Quản lý đơn hàng
        public IEnumerable hienThiDonHang()
        {
            var query = from gd in db.tbl_DonDatHangs
                       
                        orderby gd.NgayDatHang descending
                        select new
                        {
                            ngayDatHang = gd.NgayDatHang.ToShortDateString(),
                            gd,
                          
                        };
            return query.ToList();
        }

        public List<tbl_DonDatHang> hienThiChiTietDonHang(string maDH)
        {
            var query = from gd in db.tbl_DonDatHangs
                        where gd.MaDDH == maDH
                        select gd;
            return query.ToList();
        }

        public IEnumerable hienThiSPTrongDH(string maDH)
        {
            var query = from gd in db.tbl_DonDatHangs
                        join ctgd in db.tbl_ChiTietDatHangs on gd.MaDDH equals ctgd.MaDDH
                        join sp in db.tbl_SanPhams on ctgd.MaSP equals sp.MaSP
                        where gd.MaDDH == maDH
                        select new
                        {
                            gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia),
                            thanhTien = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia * ctgd.SoLuong),
                            gd,
                            ctgd,
                            sp
                        };
            return query.ToList();
        }

        public string tongTienCuaDH(string maDH)
        {
            var query = from ctgd in db.tbl_ChiTietDatHangs
                        join sp in db.tbl_SanPhams on ctgd.MaSP equals sp.MaSP
                        where ctgd.MaDDH == maDH
                        select new
                        {
                            maSP = ctgd.MaSP,
                            soLuong = ctgd.SoLuong,
                            giaTien = sp.DonGia
                        };
            decimal tongTien = 0;
            foreach(var items in query.ToList())
            {
                tongTien += decimal.Parse(items.soLuong.ToString()) * decimal.Parse(items.giaTien.ToString());
            }

            return String.Format(CultureInfo.InvariantCulture, "{0:#,#}", tongTien).ToString();
        }
        //public void capNhatTrangThai(int maDon, int maTT)
        //{
        //    var timKiem = db.tbl_GiaoDiches.Where(gd => gd.ma_gd == maDon).FirstOrDefault();
        //    tbl_GiaoDich gdCapNhat = timKiem;
        //    gdCapNhat.ma_trang_thai = maTT;
        //    db.SubmitChanges();

        //    //Hủy đơn
        //    if (maTT == 5)
        //    {
        //        var capNhatsL = db.tbl_ChiTietGiaoDiches.Where(gd => gd.ma_gd == maDon).ToList();

        //        foreach (var items in capNhatsL)
        //        {
        //            int maSP = items.ma_sp;
        //            var timKiemSP = db.tbl_SanPhams.Where(sp => sp.ma_sp == maSP).FirstOrDefault();
        //            tbl_SanPham spSua = timKiemSP;
        //            spSua.so_luong_ton = spSua.so_luong_ton + items.so_luong_mua;
        //            db.SubmitChanges();
        //        }
        //    }
        

        public bool xoaDonHang(string maDon)
        {
            var timKiem = db.tbl_DonDatHangs .Where(gd => gd.MaDDH == maDon).FirstOrDefault();
            tbl_DonDatHang gdXoa = timKiem;
            db.tbl_DonDatHangs.DeleteOnSubmit(gdXoa);

            var timKiemCTGD = db.tbl_ChiTietDatHangs.Where(ctgd => ctgd.MaDDH == maDon).FirstOrDefault();
            tbl_ChiTietDatHang ctgdXoa = timKiemCTGD;

            db.tbl_ChiTietDatHangs.DeleteOnSubmit(ctgdXoa);
            try
            {
                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        #endregion

        // -- Thống kê --
        //#region Thống kê
        //public List<thongKeDoanhThuTungThangTheoNam> thongKeDoanhThuTungThangTheoNam(int nam)
        //{
        //    var query = from gd in db.tbl_GiaoDiches
        //                join ctgd in db.tbl_ChiTietGiaoDiches on gd.ma_gd equals ctgd.ma_gd
        //                join sp in db.tbl_SanPhams on ctgd.ma_sp equals sp.ma_sp
        //                where gd.ngay_dat_hang.Value.Year == nam
        //                && gd.ma_trang_thai == 4
        //                select new
        //                {
        //                    ngayDatHang = gd.ngay_dat_hang,
        //                    thanhTien = ctgd.so_luong_mua * sp.gia
        //                } into thanhTien
        //                group thanhTien by thanhTien.ngayDatHang.Value.Month into g_thanhTien
        //                select new thongKeDoanhThuTungThangTheoNam()
        //                {
        //                    thang = g_thanhTien.Key,
        //                    doanhThu = g_thanhTien.Sum(tt => tt.thanhTien)
        //                };

        //    return query.ToList();
        //}

        //public List<hienThiNam> hienThiNam()
        //{
        //    var query = from gd in db.tbl_GiaoDiches
        //                group gd by gd.ngay_dat_hang.Value.Year into g_gd
        //                select new hienThiNam()
        //                {
        //                    nam = g_gd.Key
        //                };
        //    return query.OrderByDescending(gd => gd.nam).ToList();
        //}

        //public List<slSPBanTheoHang> thongKeSLSPBanTheoHang()
        //{
        //    var query = from gd in db.tbl_GiaoDiches
        //                join ctgd in db.tbl_ChiTietGiaoDiches on gd.ma_gd equals ctgd.ma_gd
        //                join sp in db.tbl_SanPhams on ctgd.ma_sp equals sp.ma_sp
        //                join hsp in db.tbl_Hangs on sp.ma_hang equals hsp.ma_hang
        //                where gd.ma_trang_thai == 4
        //                select new
        //                {
        //                    hang = hsp.ten_hang,
        //                    slSPBan = ctgd.so_luong_mua
        //                } into slSPBanTheoHang
        //                group slSPBanTheoHang by slSPBanTheoHang.hang into g_slSPBanTheoHang
        //                select new slSPBanTheoHang()
        //                {
        //                    tenHang = g_slSPBanTheoHang.Key,
        //                    soLuongBan = g_slSPBanTheoHang.Sum(sl => sl.slSPBan)
        //                };
        //    return query.ToList();

        //}

        //public List<thongKeSLSPBanTheoLoai> thongKeSLSPBanTheoLoai()
        //{
        //    var query = from gd in db.tbl_GiaoDiches
        //                join ctgd in db.tbl_ChiTietGiaoDiches on gd.ma_gd equals ctgd.ma_gd
        //                join sp in db.tbl_SanPhams on ctgd.ma_sp equals sp.ma_sp
        //                join lsp in db.tbl_LoaiSPs on sp.ma_loai equals lsp.ma_loai
        //                where gd.ma_trang_thai == 4
        //                select new
        //                {
        //                    loai = lsp.ten_loai,
        //                    slSPBan = ctgd.so_luong_mua
        //                } into slSPBanTheoHang
        //                group slSPBanTheoHang by slSPBanTheoHang.loai into g_slSPBanTheoHang
        //                select new thongKeSLSPBanTheoLoai()
        //                {
        //                    tenLoai = g_slSPBanTheoHang.Key,
        //                    soLuongBan = g_slSPBanTheoHang.Sum(sl => sl.slSPBan)
        //                };
        //    return query.ToList();

        //}
        //#endregion
    }

    // -- Class dl --
    #region Class dl
    public class thongKeSLSPBanTheoLoai
    {
        public thongKeSLSPBanTheoLoai()
        {
        }

        public int? soLuongBan { get; set; }
        public string tenLoai { get; set; }
    }

    public class slSPBanTheoHang
    {
        public slSPBanTheoHang()
        {
        }

        public int? soLuongBan { get; set; }
        public string tenHang { get; set; }
    }

    public class hienThiNam
    {
        public hienThiNam()
        {
        }

        public int nam { get; set; }
    }

    public class thongKeDoanhThuTungThangTheoNam
    {
        public thongKeDoanhThuTungThangTheoNam()
        {
        }

        public long? doanhThu { get; set; }
        public int thang { get; set; }
    }
    #endregion
}
