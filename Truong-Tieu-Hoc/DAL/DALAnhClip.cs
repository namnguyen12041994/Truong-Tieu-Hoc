using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TruongTieuHoc.DAL
{
    public class DALAnhClip
    {
        private DBTruongTieuHocDataContext _db;
        public DALAnhClip()
        {
            _db = new DBTruongTieuHocDataContext();
        }
        public void Delete(int id)
        {
            //var res = _db.tbl_LienHes.Where(w => w.ID.Equals(id));
            var res = from lh in _db.tbl_AnhClips
                      where lh.ID == id
                      select lh;

            if (res.Any())
            {
                _db.tbl_AnhClips.DeleteAllOnSubmit(res);
                _db.SubmitChanges();
            }
        }
        public void Insert(tbl_AnhClip tblAnhClip)
        {
            _db.tbl_AnhClips.InsertOnSubmit(tblAnhClip);
            _db.SubmitChanges();
        }
        public void Update(tbl_AnhClip tblAnhClip)
        {
            var Res = _db.tbl_AnhClips.Where(w => w.ID.Equals(tblAnhClip.ID)).SingleOrDefault();
            if (Res != null)
            {
                Res.HinhAnh = tblAnhClip.HinhAnh;
                Res.MoTa = tblAnhClip.MoTa;
                Res.NgayCapNhat = tblAnhClip.NgayCapNhat;
                Res.ThuTu = tblAnhClip.ThuTu;
                Res.TieuDe = tblAnhClip.TieuDe;
                Res.TrangThai = tblAnhClip.TrangThai;
                Res.Url = tblAnhClip.Url;                
            }
            _db.SubmitChanges();
        }
    }
}