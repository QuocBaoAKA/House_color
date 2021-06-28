using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Collections;
using System.Globalization;
using System.Data;

namespace BLL
{
    public class BLL_Customer
    {
        WBLKDataContext db = new WBLKDataContext();
        private string maSP;

        // -- Đăng nhập --
        #region Đăng nhập
        public bool dangNhap(string tdn, string mk)
        {
            int resultTDN = db.tbl_KhachHangs.Where(tk => tk.Username == tdn && tk.Password == mk).Count();
            int resultEmail = db.tbl_KhachHangs.Where(tk => tk.Email == tdn && tk.Password == mk).Count();
            if (resultTDN > 0 || resultEmail > 0)
            {
                return true;
            }
            return false;
        }

        // -- Thêm Tài Khoản --
        public bool themTK(string tdn, string mk, string hoTen, string email, string sdt, string diaChi)
        {
            tbl_KhachHang kh = new tbl_KhachHang();
            kh.Username = tdn;
            kh.Password = mk;
            kh.HoTen = hoTen;
            kh.Email = email;
            kh.SDT = sdt;
            kh.DiaChi = diaChi;
            db.tbl_KhachHangs.InsertOnSubmit(kh);

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

        // -- Lấy Họ Tên --
        public string layHoTen(string tdn)
        {
            string hoTenTND = db.tbl_KhachHangs.Where(tk => tk.Username == tdn).Select(tk => tk.HoTen).SingleOrDefault();
            string hoTenEmail = db.tbl_KhachHangs.Where(tk => tk.Email == tdn).Select(tk => tk.HoTen).SingleOrDefault();

            if (hoTenTND != null)
            {
                return hoTenTND;
            }
            else
            {
                return hoTenEmail;
            }
        }

        // Đăng nhập Google + Facebook
        public bool kiemTraTonTaiTK(string email)
        {
            int result = db.tbl_KhachHangs.Where(tk => tk.Email == email).Count();
            if (result > 0)
            {
                return true;
            }
            return false;
        }

        #endregion

        // -- Đăng ký Tài Khoản --
        #region Đăng ký tài khoản
        public bool kiemTraTDN(string tdn)
        {
            int query = db.tbl_KhachHangs.Where(tk => tk.Username == tdn).Count();
            if (query > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        // -- Kiểm tra Email --
        public bool kiemTraEmail(string email)
        {
            int query = db.tbl_KhachHangs.Where(tk => tk.Email == email).Count();
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

        // --- Hiển thị Sản Phẩm --
        #region Hiển thị sản phẩm
        public IEnumerable hienThiSP()
        {
            return db.tbl_SanPhams.Where(sp => sp.Soluongton > 0).Select(sp => new { gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia), sp }).ToList();
        }

        // -- Hiển thị Sản Phẩm Mới Cập Nhật
        public IEnumerable hienThiSPMoiCapNhat()
        {
            return db.tbl_SanPhams.Where(sp => sp.Soluongton > 0).OrderByDescending(sp => sp.MaSP).Select(sp => new { gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia), sp }).Take(8).ToList();
        }

        // -- Hiển thị Sản phẩm tìm kiếm
        public IEnumerable hienThiSPTimKiem(string tuKhoa)
        {
            int timTen = 0, timGia = 0;
            try
            {
                timTen = db.tbl_SanPhams.Where(sp => sp.TenSP.Contains(tuKhoa) && sp.Soluongton > 0).Select(sp => sp.TenSP).Count();
                timGia = db.tbl_SanPhams.Where(sp => sp.DonGia == Int32.Parse(tuKhoa) && sp.Soluongton > 0).Select(sp => sp.TenSP).Count();
            }
            catch
            {

            }
            
            if (timTen > 0)
            {
                return db.tbl_SanPhams.Where(sp => sp.TenSP.Contains(tuKhoa) && sp.Soluongton > 0).Select(sp => new { gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia), sp }).ToList();
            }
            else if(timGia > 0)
            {
                return db.tbl_SanPhams.Where(sp => sp.DonGia == Int32.Parse(tuKhoa) && sp.Soluongton> 0).Select(sp => new { gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia), sp }).ToList();
            }
            else
            {
                return null;
            }
        }

        // -- Hiển thị Sản Phẩm Theo Loại
        public IEnumerable hienThiSPTheoLoai(string maLoai)
        {
            return db.tbl_SanPhams.Where(sp => sp.MaLH == maLoai && sp.Soluongton > 0).Select(sp => new { gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia), sp }).ToList();
        }

        // -- Hiển thị Chi Tiết Sản Phẩm --
        public IEnumerable hienThiChiTietSP(string maSP)
        {
            var query = from sp in db.tbl_SanPhams
                        join lsp in db.tbl_LoaiHangs on sp.MaLH equals lsp.MaLH
                        join hsp in db.tbl_MaMaus on sp.MaMau equals hsp.MaMau
                        where sp.MaSP == maSP
                        select new
                        {
                            sp,
                            gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia),
                            lsp,
                            hsp
                        };
            return query.ToList();
        }

        // -- Hiển thj Danh Mục Sản Phẩm
        public IEnumerable hienThiDanhMucSP()
        {
            var query = from sp in db.tbl_SanPhams
                        where sp.Soluongton > 0
                        group sp by sp.MaLH into maloai
                        select new
                        {
                            maloai = maloai.Key,
                            slMaLoai = maloai.Count()
                        }
                        into queryCountMaLoai
                        join lsp in db.tbl_LoaiHangs on queryCountMaLoai.maloai equals lsp.MaLH
                        select new
                        {
                            lsp.MaLH,
                            lsp.TenLH,
                            queryCountMaLoai.slMaLoai
                        };
            return query.ToList();
        }


        public string layTenLoaiSP(string maLoai)
        {
            return maLoai + " - " + db.tbl_LoaiHangs.Where(lsp => lsp.MaLH == maLoai).Select(lsp => lsp.TenLH).SingleOrDefault();
        }

        public string kiemTraHetHang(string maSP)
        {
            int? query = db.tbl_SanPhams.Where(sp => sp.MaSP == maSP).Select(sp => sp.Soluongton).SingleOrDefault();

            if (query <= 0)
            {
                return "hethang";
            }
            else
                return "conhang";
        }

        public IEnumerable hienThiSPLoc(int minPrice, int maxPrice, int locTheo)
        {
            if (locTheo == 1)
            {
                return db.tbl_SanPhams.Where(sp => sp.Soluongton > 0 && sp.DonGia >= minPrice && sp.DonGia <= maxPrice).OrderBy(sp => sp.TenSP).Select(sp => new { gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia), sp }).ToList();
            }
            else if (locTheo == 2)
            {
                return db.tbl_SanPhams.Where(sp => sp.Soluongton > 0 && sp.DonGia >= minPrice && sp.DonGia <= maxPrice).OrderByDescending(sp => sp.TenSP).Select(sp => new { gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia), sp }).ToList();
            }
            else
            if (locTheo == 1)
            {
                return db.tbl_SanPhams.Where(sp => sp.Soluongton > 0 && sp.DonGia >= minPrice && sp.DonGia <= maxPrice).OrderBy(sp => sp.DonGia).Select(sp => new { gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia), sp }).ToList();
            }
            else
            {
                return db.tbl_SanPhams.Where(sp => sp.Soluongton > 0 && sp.DonGia >= minPrice && sp.DonGia <= maxPrice).OrderByDescending(sp => sp.DonGia).Select(sp => new { gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia), sp }).ToList();
            }
        }

        public IEnumerable hienThiSPLocTheoDanhMuc(int minPrice, int maxPrice, int locTheo, string maLoai)
        {
            if (locTheo == 1)
            {
                return db.tbl_SanPhams.Where(sp => sp.Soluongton > 0 && sp.DonGia >= minPrice && sp.DonGia <= maxPrice && sp.MaLH == maLoai).OrderBy(sp => sp.TenSP).Select(sp => new { gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia), sp }).ToList();
            }
            else if (locTheo == 2)
            {
                return db.tbl_SanPhams.Where(sp => sp.Soluongton > 0 && sp.DonGia >= minPrice && sp.DonGia <= maxPrice && sp.MaLH == maLoai).OrderByDescending(sp => sp.TenSP).Select(sp => new { gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia), sp }).ToList();
            }
            else
            if (locTheo == 1)
            {
                return db.tbl_SanPhams.Where(sp => sp.Soluongton > 0 && sp.DonGia >= minPrice && sp.DonGia <= maxPrice && sp.MaLH == maLoai).OrderBy(sp => sp.DonGia).Select(sp => new { gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia), sp }).ToList();
            }
            else
            {
                return db.tbl_SanPhams.Where(sp => sp.Soluongton > 0 && sp.DonGia >= minPrice && sp.DonGia <= maxPrice && sp.MaLH == maLoai).OrderByDescending(sp => sp.DonGia).Select(sp => new { gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia), sp }).ToList();
            }
        }

        public string giaCaoNhatTatCaSP()
        {
            return db.tbl_SanPhams.Where(sp => sp.Soluongton > 0).Max(sp => sp.DonGia).ToString();
        }

        public string giaThapNhatTatCaSP()
        {
            return db.tbl_SanPhams.Where(sp => sp.Soluongton > 0).Min(sp => sp.DonGia).ToString();
        }

        public string giaCaoNhatTheoDanhMuc(string maLoai)
        {
            return db.tbl_SanPhams.Where(sp => sp.MaLH == maLoai && sp.Soluongton > 0).Max(sp => sp.DonGia).ToString();
        }

        public string giaThapNhatTheoDanhMuc(string maLoai)
        {
            return db.tbl_SanPhams.Where(sp => sp.MaLH == maLoai && sp.Soluongton > 0).Min(sp => sp.DonGia).ToString();
        }

        #endregion

        // -- Giỏ hàng --
        #region Giỏ hàng
        public List<tbl_SanPham> hienThiGioHang(string maSP)
        {
            return db.tbl_SanPhams.Where(sp => sp.MaSP == maSP).ToList();
        }

        #endregion

        // -- Hiển thị thông tin khách hàng --
        #region Hiển thị thông tin khách hàng
        public List<tbl_KhachHang> hienThiThongTinKH(string tdn_email)
        {
            return db.tbl_KhachHangs.Where(kh => kh.Email == tdn_email || kh.Username == tdn_email).ToList();
        }

        public bool suaThongTinKH(string tdn_email, string hoTen, string diaChi, string email, string sdt)
        {
            var timKiem = db.tbl_KhachHangs.Where(kh => kh.Username == tdn_email || kh.Email == tdn_email).FirstOrDefault();

            tbl_KhachHang khSua = timKiem;

            khSua.HoTen = hoTen;
            khSua.Email = email;
            khSua.SDT = sdt;
            khSua.DiaChi = diaChi;

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

        // -- Thay đổi mật khẩu --
        #region Thay đổi mật khẩu
        public bool kiemTraTonTaiMK(string email)
        {
            string query = db.tbl_KhachHangs.Where(tk => tk.Email == email).Select(tk => tk.Password).SingleOrDefault();
            if (query != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool thaydoiMK(string tdn_email, string mk)
        {
            var timKiem = db.tbl_KhachHangs.Where(kh => kh.Username == tdn_email || kh.Email == tdn_email).FirstOrDefault();

            tbl_KhachHang khMK = timKiem;
            khMK.Password = mk;

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

        public bool kiemTraMKCu(string tdn_email, string mk)
        {
            int query = db.tbl_KhachHangs.Where(tk => (tk.Email == tdn_email || tk.Username == tdn_email) && tk.Password == mk).Count();
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

        // -- Đặt hàng --
        #region Đặt hàng 
        //public int layMaKH(string tdn_email)
        //{
        //    return db.tbl_KhachHangs.Where(tk => tk.Username == tdn_email || tk.Email == tdn_email).Select(tk => tk.ID_TK).SingleOrDefault();
        //}

        //public void datHang(DataTable gioHang, int maKH, string diaChiGH, string sdtGH, string emailGH, string hoTenGH)
        //{
        //    tbl_DonDatHang gd = new tbl_DonDatHang();
        //    gd.NgayDatHang = DateTime.Now;
        //    gd.ID_TK = maKH;
        //    gd.DiaChiNhanHang = diaChiGH;
        //    gd.SDT = sdtGH;

        //    db.tbl_DonDatHangs.InsertOnSubmit(gd);
        //    db.SubmitChanges();

        //    string maGD = gd.MaDDH;
        //    foreach (DataRow r in gioHang.Rows)
        //    {
        //        tbl_ChiTietDatHang ctgd = new tbl_ChiTietDatHang();
        //        ctgd.MaDDH = maGD;
        //        ctgd.MaSP = maSP;
        //        ctgd.SoLuong = Int32.Parse(r["soLuong"].ToString());
        //        db.tbl_ChiTietDatHangs.InsertOnSubmit(ctgd);
        //        db.SubmitChanges();
        //    }

        //    foreach (DataRow r in gioHang.Rows)
        //    {
        //        string maSP = maSP;
        //        var timKiem = db.tbl_SanPhams.Where(sp => sp.MaSP == maSP).FirstOrDefault();
        //        tbl_SanPham spSua = timKiem;
        //        spSua.Soluongton = spSua.Soluongton - Int32.Parse(r["soLuong"].ToString());
        //        db.SubmitChanges();
        //    }
        //}

        //public IEnumerable lichSuDatHang(int maKH)
        //{
        //    var query = from gd in db.tbl_GiaoDiches
        //                join tt in db.tbl_TrangThais on gd.ma_trang_thai equals tt.ma_trang_thai
        //                orderby gd.ngay_dat_hang descending
        //                where gd.ma_kh == maKH
        //                select new
        //                {
        //                    ngayDatHang = gd.ngay_dat_hang.Value.ToShortDateString(),
        //                    gd,
        //                    tt
        //                };
        //    return query.ToList();
        //}

        //public List<tbl_GiaoDich> hienThiChiTietDonHang(int maDH)
        //{
        //    var query = from gd in db.tbl_GiaoDiches
        //                where gd.ma_gd == maDH
        //                select gd;
        //    return query.ToList();
        //}

        //public string layTenTrangThai(int maTT)
        //{
        //    return db.tbl_TrangThais.Where(tt => tt.ma_trang_thai == maTT).Select(tt => tt.ten_trang_thai).SingleOrDefault();
        //}

        //public string tongTienCuaDH(int maDH)
        //{
        //    var query = from ctgd in db.tbl_ChiTietGiaoDiches
        //                join sp in db.tbl_SanPhams on ctgd.ma_sp equals sp.ma_sp
        //                where ctgd.ma_gd == maDH
        //                select new
        //                {
        //                    maSP = ctgd.ma_sp,
        //                    soLuong = ctgd.so_luong_mua,
        //                    giaTien = sp.gia
        //                };
        //    decimal tongTien = 0;
        //    foreach (var items in query.ToList())
        //    {
        //        tongTien += decimal.Parse(items.soLuong.ToString()) * decimal.Parse(items.giaTien.ToString());
        //    }

        //    return String.Format(CultureInfo.InvariantCulture, "{0:#,#}", tongTien).ToString();
        //}

        //public IEnumerable hienThiSPTrongDH(int maDH)
        //{
        //    var query = from gd in db.tbl_GiaoDiches
        //                join ctgd in db.tbl_ChiTietGiaoDiches on gd.ma_gd equals ctgd.ma_gd
        //                join sp in db.tbl_SanPhams on ctgd.ma_sp equals sp.ma_sp
        //                where gd.ma_gd == maDH
        //                select new
        //                {
        //                    gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.gia),
        //                    thanhTien = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.gia * ctgd.so_luong_mua),
        //                    gd,
        //                    ctgd,
        //                    sp
        //                };
        //    return query.ToList();
        //}
        #endregion

    }
}