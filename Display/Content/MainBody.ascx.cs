using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruongTieuHoc.DAL;
using TruongTieuHoc.Models;

namespace TruongTieuHoc.Display.Content
{
    public partial class MainBody : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }

        }

        protected void LoadData()
        {
            DBTruongTieuHocDataContext  db = new DBTruongTieuHocDataContext();
            Table<tbl_BaiDang_ChiTiet> baidang = db.GetTable<tbl_BaiDang_ChiTiet>();
            Table<tbl_BaiDang_Nhom> nhombaidang = db.GetTable<tbl_BaiDang_Nhom>();
            var tintuc = (from ct in baidang
                join n in nhombaidang
                    on ct.IDNhom equals n.ID
                orderby ct.ThuTu ascending
                where n.IDNhom == "tintuc" && ct.TrangThai == true
                select new
                {
                    id = ct.IDBD,
                    link = ConvertQuery.ConvertToUnSign(ct.TieuDeBD),
                    hinhanh = ct.HinhAnhBD,
                    tieude = ct.TieuDeBD,
                    tomtat = Global.CatChuoi(ct.TomTatBD, 90)
                }).Take(3);

             rptTinTucSuKien.DataSource = tintuc;
            rptTinTucSuKien.DataBind();

            var thongbao = (from ct in baidang
                join n in nhombaidang
                    on ct.IDNhom equals n.ID
                orderby ct.ThuTu ascending
                where n.IDNhom == "thongbao" && ct.TrangThai == true
                select new
                {
                    id = ct.IDBD,
                    link = ConvertQuery.ConvertToUnSign(ct.TieuDeBD),
                    hinhanh = ct.HinhAnhBD,
                    tieude = ct.TieuDeBD,
                    tomtat = Global.CatChuoi(ct.TomTatBD, 90)
                }).Take(3);

            prtThongBao.DataSource = thongbao;
            prtThongBao.DataBind();

            var hoatdong = (from ct in baidang
                join n in nhombaidang
                    on ct.IDNhom equals n.ID
                orderby ct.ThuTu ascending
                where n.IDNhom == "hoatdong" && ct.TrangThai == true
                select new
                {
                    id = ct.IDBD,
                    link = ConvertQuery.ConvertToUnSign(ct.TieuDeBD),
                    hinhanh = ct.HinhAnhBD,
                    tieude = ct.TieuDeBD,
                    tomtat = Global.CatChuoi(ct.TomTatBD, 90)
                }).Take(3);

            rptHoatDongHocTap.DataSource = hoatdong;
            rptHoatDongHocTap.DataBind();

            var hoatdongvannghe = (from ct in baidang
                join n in nhombaidang
                    on ct.IDNhom equals n.ID
                orderby ct.ThuTu ascending
                where n.IDNhom == "hoatdong" && ct.TrangThai == true
                select new
                {
                    id = ct.IDBD,
                    link = ConvertQuery.ConvertToUnSign(ct.TieuDeBD),
                    hinhanh = ct.HinhAnhBD,
                    tieude = ct.TieuDeBD,
                    tomtat = Global.CatChuoi(ct.TomTatBD, 90)
                }).Take(3);

            rptHoatDongVanNghe.DataSource = hoatdongvannghe;
            rptHoatDongVanNghe.DataBind();
        }
    }
}