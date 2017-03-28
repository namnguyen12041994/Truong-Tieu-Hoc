using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TruongTieuHoc.DAL
{
    public class NguoiDung
    {
        private DBTruongTieuHocDataContext _db;

        public NguoiDung()
        {
            _db = new DBTruongTieuHocDataContext();
        }

        public void Insert(tbl_NguoiDung nd)
        {
            _db.tbl_NguoiDungs.InsertOnSubmit(nd);
            _db.SubmitChanges();
        }
        
        public void Update(tbl_NguoiDung nd)
        {
            var Res = _db.tbl_NguoiDungs.Where(w => w.IDAdmin.Equals(nd.IDAdmin)).SingleOrDefault();
            if (Res != null)
            {
                Res.DiaChi = nd.DiaChi;
                Res.GioiTinh = nd.GioiTinh;
                Res.Ho = nd.Ho;
                Res.MatKhau = nd.MatKhau;
                Res.NgaySinh = nd.NgaySinh;
                Res.QuyenAdmin = nd.QuyenAdmin;
                Res.SDT = nd.SDT;
                Res.TaiKhoan = nd.TaiKhoan;
                Res.Ten = nd.Ten;
                Res.TrangThai = nd.TrangThai;
            }
            _db.SubmitChanges();
        }

        public void Delete(int IDND)
        {
            var Res = _db.tbl_NguoiDungs.Where(w => w.IDAdmin.Equals(IDND));
            if (Res != null)
            {
                _db.tbl_NguoiDungs.DeleteAllOnSubmit(Res);
                _db.SubmitChanges();
            }
        }

    }
}