using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TruongTieuHoc.DAL
{
    public class DALLienHe
    {
        private DBTruongTieuHocDataContext _db;
        public DALLienHe()
        {
            _db = new DBTruongTieuHocDataContext();
        }
        public void Delete(int id)
        {
            //var res = _db.tbl_LienHes.Where(w => w.ID.Equals(id));
            var res = from lh in _db.tbl_LienHes
                where lh.ID == id
                select lh;

            if (res.Any())
            {
                _db.tbl_LienHes.DeleteAllOnSubmit(res);
                _db.SubmitChanges();
            }
        }
        public bool Insert(tbl_LienHe tblLienHe)
        {
            try
            {
                _db.tbl_LienHes.InsertOnSubmit(tblLienHe);
                _db.SubmitChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public void Update(tbl_LienHe tblLienHe)
        {
            var Res = _db.tbl_LienHes.Where(w => w.ID.Equals(tblLienHe.ID)).SingleOrDefault();
            if (Res != null)
            {
                //Res.HoTen = tblLienHe.HoTen;
                //Res.Email = tblLienHe.Email;
                //Res.NgayNhan = tblLienHe.NgayNhan;               
                //Res.TinNhan = tblLienHe.TinNhan;
                Res.TrangThaiDoc = tblLienHe.TrangThaiDoc;
            }
            _db.SubmitChanges();
        }
    }
}