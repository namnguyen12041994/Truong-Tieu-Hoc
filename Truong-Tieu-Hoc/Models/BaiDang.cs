using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TruongTieuHoc.DAL;


namespace TruongTieuHoc.Models
{
    public class BaiDang
    {
        private DBTruongTieuHocDataContext db;

        public BaiDang()
        {
            db = new DBTruongTieuHocDataContext();
        }

        //public List<tbl_BaiDang_ChiTiet> BaiDangChiTiets(int id, int soluong)
        //{
        //    //var danhsach = (from ct in db.tbl_BaiDang_ChiTiets
        //    //                join nhom in db.tbl_BaiDang_Nhoms on ct.IDNhom equals nhom.ID
        //    //                where nhom.ID == id && ct.TrangThai == true
        //    //                orderby ct.ThuTu ascending
        //    //                select new
        //    //                {
        //    //                    id = ct.IDBD,
        //    //                    link = ct.TieuDeBD.ToLower().Replace(' ', '-'),
        //    //                    tieude = ct.TieuDeBD,
        //    //                    ngaydang = ct.NgayDangBD.Value.ToShortDateString()
        //    //                }).Take(soluong);
        //    //return danhsach.ToList();
        //}
    }
}