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
        public string srcDir = "D:\\CNPM\\DoAN\\DA_CN\\GUI\\hinhanh\\";
        WBLKDataContext db = new WBLKDataContext();
        
        // -- Đăng nhập --
        #region Đăng nhập
        public bool dangNhap(string tdn, string mk)
        {
            int result = db.tbl_NhanViens.Where(tk => tk.Username == tdn && tk.Password == mk).Count();
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
            var timKiem = db.tbl_NhanViens.Where(tk => tk.Username == tdn).FirstOrDefault();

            tbl_NhanVien tkSua = timKiem;
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
            int query = db.tbl_NhanViens.Where(tk => tk.Username == tdn && tk.Password == mk).Count();
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

        // -- Quản lý màu --
        #region Quản lý hãng
        public List<tbl_MaMau> hienThimau()
        {
            var query = from lsp in db.tbl_MaMaus
                        select lsp;
            return query.ToList();
        }

        public bool themmausanpham(string mamau, string tenmau)
        {
            tbl_MaMau hsp = new tbl_MaMau();
            hsp.MaMau = mamau;
            hsp.TenMau = tenmau;

            db.tbl_MaMaus.InsertOnSubmit(hsp);
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

        public bool xoamamau(string maHang)
        {
            var timKiem = db.tbl_MaMaus.Where(hsp => hsp.MaMau == maHang).FirstOrDefault();
            tbl_MaMau hspXoa = timKiem;
            db.tbl_MaMaus.DeleteOnSubmit(hspXoa);
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

        public List<tbl_MaMau> hienThimamauDeSua(string mamau)
        {
            return db.tbl_MaMaus.Where(hsp => hsp.MaMau == mamau).ToList();
        }

        public bool suamauSanPham(string mamau, string tenmau)
        {
            var timKiem = db.tbl_MaMaus.Where(hsp => hsp.MaMau == mamau).FirstOrDefault();
            tbl_MaMau hspSua = timKiem;
            hspSua.TenMau = tenmau;

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
        #region Quản lý loại sản phẩm
        public List<tbl_LoaiHang> hienThiLoaiSP()
        {
            var query = from lsp in db.tbl_LoaiHangs
                        select lsp;
            return query.ToList();
        }

        public bool themLoaiSanPham(string maLoai, string tenLoai)
        {
            tbl_LoaiHang lsp = new tbl_LoaiHang();
            lsp.MaLH = maLoai;
            lsp.TenLH = tenLoai;
           
            db.tbl_LoaiHangs.InsertOnSubmit(lsp);
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

        public bool xoaLoaiSanPham(string maLoai)
        {
            var timKiem = db.tbl_LoaiHangs.Where(lsp => lsp.MaLH == maLoai).FirstOrDefault();
            tbl_LoaiHang lspXoa = timKiem;
            db.tbl_LoaiHangs.DeleteOnSubmit(lspXoa);
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

        public List<tbl_LoaiHang> hienThiLoaiSanPhamDeSua(string maLoaiSP)
        {
            return db.tbl_LoaiHangs.Where(lsp => lsp.MaLH == maLoaiSP).ToList();
        }

        public bool suaLoaiSanPham(string maLoai, string tenLoai)
        {
            var timKiem = db.tbl_LoaiHangs.Where(lsp => lsp.MaLH == maLoai).FirstOrDefault();
            tbl_LoaiHang lspSua = timKiem;
            lspSua.TenLH = tenLoai;

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
                            hinhAnh = sp.HinhAnh,
                            tenLoai = lsp.TenLH,
                            tenHang = hsp.TenMau,
                            maLoai = lsp.MaLH,
                            mamau = hsp.MaMau,
                            mancc = sp.MaNCC,
                            gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia),
                            mota = sp.MoTa,
                            
                        };
            return query.ToList();
        }

        public bool themSanPham(string masp, string tenSP, string maLoai, string mamau, float gia, string hinhAnh, string moTa, string mancc)
        {
            tbl_SanPham sp = new tbl_SanPham();
            sp.MaSP = masp;
            sp.TenSP = tenSP;
            sp.MaLH = maLoai;
            sp.MaMau = mamau;
            sp.MaNCC = mancc;
            sp.DonGia = gia;
            sp.HinhAnh = hinhAnh;
            sp.MoTa = moTa;
            
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

        public bool suaSanPham(string maSP, string tenSP, string maLoai, string mamau, float gia, string hinhAnh, string moTa, string mancc)
        {
            var timKiem = db.tbl_SanPhams.Where(sp => sp.MaSP == maSP).FirstOrDefault();
           
            tbl_SanPham spSua = timKiem;
            spSua.TenSP = tenSP;
            spSua.MaLH = maLoai;
            spSua.MaMau = mamau;
            spSua.MaNCC = mancc;
            spSua.DonGia = gia;
            spSua.HinhAnh = hinhAnh;
            spSua.MoTa = moTa;
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
        // -- Quản lý nha cung cap --
        #region Quản lý sản phẩm
        public IEnumerable hienThincc()
        {
            var query = from sp in db.tbl_NhaCungCaps
                        select new
                        {
                            mancc = sp.MaNCC,
                            tenncc = sp.TenNCC,
                            diachi = sp.DiaChi,
                            email = sp.Email,
                            sdt = sp.SDT,
                           
                        };
            return query.ToList();
        }

        public bool themncc(string mancc, string tenncc, string email, int sdt, string diachi)
        {
            tbl_NhaCungCap sp = new tbl_NhaCungCap();
            sp.MaNCC = mancc;
            sp.TenNCC = tenncc;
            sp.DiaChi = diachi;
            sp.Email = email;
            sp.SDT = sdt;

            db.tbl_NhaCungCaps.InsertOnSubmit(sp);
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

        public bool xoancc(string mancc)
        {
            var timKiem = db.tbl_NhaCungCaps.Where(sp => sp.MaNCC == mancc).FirstOrDefault();
            tbl_NhaCungCap spXoa = timKiem;
            db.tbl_NhaCungCaps.DeleteOnSubmit(spXoa);
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

        public List<tbl_NhaCungCap> hienThinccdesua(string mancc)
        {
            return db.tbl_NhaCungCaps.Where(sp => sp.MaNCC == mancc).ToList();
        }

        public bool suancc(string mancc, string tenncc, string email, string diachi, int sdt)
        {
            var timKiem = db.tbl_NhaCungCaps.Where(sp => sp.MaNCC == mancc).FirstOrDefault();

            tbl_NhaCungCap spSua = timKiem;
            spSua.TenNCC = tenncc;
            spSua.Email = email;
            spSua.DiaChi = diachi;
            spSua.SDT = sdt;
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
        //public IEnumerable hienThiDonHang()
        //{
        //    var query = from gd in db.tbl_GiaoDiches
        //                join tt in db.tbl_TrangThais on gd.ma_trang_thai equals tt.ma_trang_thai
        //                orderby gd.ngay_dat_hang descending
        //                select new
        //                {
        //                    ngayDatHang = gd.ngay_dat_hang.Value.ToShortDateString(),
        //                    gd,
        //                    tt
        //                };
        //    return query.ToList();
        //}

        public List<tbl_DonDatHang> hienThiChiTietDonHang(string maDDH)
        {
            var query = from gd in db.tbl_DonDatHangs
                        where gd.MaDDH == maDDH
                        select gd;
            return query.ToList();
        }

        public IEnumerable hienThiSPTrongDH(string maDDH)
        {
            var query = from gd in db.tbl_DonDatHangs
                        join ctgd in db.tbl_ChiTietDatHangs on gd.MaDDH equals ctgd.MaDDH
                        join sp in db.tbl_SanPhams on ctgd.MaSP equals sp.MaSP
                        where gd.MaDDH == maDDH
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

        public string tongTienCuaDH(string maDDH)
        {
            var query = from ctgd in db.tbl_ChiTietDatHangs
                        join sp in db.tbl_SanPhams on ctgd.MaSP equals sp.MaSP
                        where ctgd.MaDDH == maDDH
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

        //public List<tbl_TrangThai> hienThiTrangThai()
        //{
        //    return db.tbl_TrangThais.ToList();
        //}

        //public string layTenTrangThai(int maTT)
        //{
        //    return db.tbl_TrangThais.Where(tt => tt.ma_trang_thai == maTT).Select(tt => tt.ten_trang_thai).SingleOrDefault();
        //}

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
        //}

        public bool xoaDonHang(string maDon)
        {
            var timKiem = db.tbl_DonDatHangs.Where(gd => gd.MaDDH == maDon).FirstOrDefault();
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
        #region Thống kê
        //public List<thongKeDoanhThuTungThangTheoNam> thongKeDoanhThuTungThangTheoNam(int nam)
        //{
        //    var query = from gd in db.tbl_DonDatHangs
        //                join ctgd in db.tbl_ChiTietDatHangs on gd.MaDDH equals ctgd.MaDDH
        //                join sp in db.tbl_SanPhams on ctgd.MaSP equals sp.MaSP
        //                where gd.NgayDatHang.Year == nam
        //                select new
        //                {
        //                    ngayDatHang = gd.NgayDatHang,
        //                    thanhTien = ctgd.SoLuong * sp.DonGia
        //                } into thanhTien
        //                group thanhTien by thanhTien.ngayDatHang.Month into g_thanhTien
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
        //                join hsp in db.tbl_MaMaus on sp.ma_mau equals hsp.ma_mau
        //                where gd.ma_trang_thai == 4
        //                select new
        //                {
        //                    hang = hsp.ten_mau,
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
        //                join lsp in db.tbl_LoaiHangs on sp.ma_loai equals lsp.ma_loai
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

        }
        #endregion
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
