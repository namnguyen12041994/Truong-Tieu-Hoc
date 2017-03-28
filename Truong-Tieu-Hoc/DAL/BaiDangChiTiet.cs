using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TruongTieuHoc.DAL
{
    public class BaiDangChiTiet
    {
        private DBTruongTieuHocDataContext _db;

        public BaiDangChiTiet()
        {
            _db = new DBTruongTieuHocDataContext();
        }

        public void Insert(tbl_BaiDang_ChiTiet bdct)
        {            
            _db.tbl_BaiDang_ChiTiets.InsertOnSubmit(bdct);
            _db.SubmitChanges();           
        }

        public void Update(tbl_BaiDang_ChiTiet bdct)
        {
            var Res = _db.tbl_BaiDang_ChiTiets.Where(w => w.IDBD.Equals(bdct.IDBD)).SingleOrDefault();
            if (Res != null)
            {
                Res.HinhAnhBD = bdct.HinhAnhBD;
                Res.IDNguoiDang = bdct.IDNguoiDang;
                Res.IDNhom = bdct.IDNhom;
                Res.MoiNhatBD = bdct.MoiNhatBD;
                Res.NgayDangBD = bdct.NgayDangBD;
                Res.NoiDungBD = bdct.NoiDungBD;
                Res.ThuTu = bdct.ThuTu;
                Res.TieuDeBD = bdct.TieuDeBD;
                Res.TomTatBD = bdct.TomTatBD;
                Res.TrangThai = bdct.TrangThai;               
            }
            _db.SubmitChanges();
        }

        public void Delete(int IDBD)
        {
            var Res = _db.tbl_BaiDang_ChiTiets.Where(w => w.IDBD.Equals(IDBD));
            if (Res != null)
            {
                _db.tbl_BaiDang_ChiTiets.DeleteAllOnSubmit(Res);
                _db.SubmitChanges();
            }
        }
    }
}