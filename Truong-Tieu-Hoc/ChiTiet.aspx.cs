using System;
using System.Collections.Specialized;
using System.Linq;
using TruongTieuHoc.DAL;
using TruongTieuHoc.Models;

namespace TruongTieuHoc
{
    public partial class ChiTiet : System.Web.UI.Page
    {
        private DBTruongTieuHocDataContext db;
        private tbl_BaiDang_ChiTiet tblBaiDangChiTiet;
        private DALBaiDang dalBaiDang;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db = new DBTruongTieuHocDataContext();
                NameValueCollection query = Request.QueryString;

                if (query.HasKeys())
                {
                   if(query.GetKey(0) == "page")
                        LoadContent(query.Get(0));
                   else
                   {
                        Response.Redirect("error.aspx");
                    }
                }
                else
                {
                    Response.Redirect("error.aspx");
                }
            }
        }

        void LoadContent(string query)
        {
            int idbd = ConvertQuery.Convert(query);
            if (idbd != -1)
            {
                var noidung = from ct in db.tbl_BaiDang_ChiTiets
                    join nhom in db.tbl_BaiDang_Nhoms on ct.IDNhom equals nhom.ID
                    join nguoidung in db.tbl_NguoiDungs on ct.IDNguoiDang equals nguoidung.IDAdmin
                    where ct.IDBD == idbd
                    select new
                    {
                        tennhom = nhom.TenNhom,
                        idnhom = nhom.ID,
                        tieude = ct.TieuDeBD,
                        tomtat = ct.TomTatBD,
                        luotxem = ct.LuotXemBD,
                        noidungchinh = ct.NoiDungBD,
                        ngaydang = FormatDate.DDMMYYYY(ct.NgayDangBD.Value),
                        tacgia = nguoidung.Ho + " " + nguoidung.Ten
                    };                

                if (noidung.Any())
                {
                    rptChiTiet.DataSource = noidung;
                    rptChiTiet.DataBind();
                    TinLienQuan(noidung.FirstOrDefault().idnhom);
                    UpdateViews(idbd, noidung.FirstOrDefault().luotxem.Value);
                }
                                  
            }
            else
            {
                Response.Redirect("error.aspx");
            }
        }

        private void TinLienQuan(int idnhom)
        {
            var danhsach = (from ct in db.tbl_BaiDang_ChiTiets
                join nhom in db.tbl_BaiDang_Nhoms on ct.IDNhom equals nhom.ID
                where nhom.ID == idnhom && ct.TrangThai == true
                orderby ct.ThuTu ascending 
                select new
                {                    
                    id = ct.IDBD,
                    link = ConvertQuery.ConvertToUnSign(ct.TieuDeBD),
                    tieude = ct.TieuDeBD,
                    ngaydang = FormatDate.DDMMYYYY(ct.NgayDangBD.Value)
                }).Take(SoLuongTinLienQuan());

            rptTinLienQuan.DataSource = danhsach;
            rptTinLienQuan.DataBind();
        }

        private int SoLuongTinLienQuan()
        {
            var soluong = db.tbl_ThongTinCaiDats.Where(w => w.ViTri.Equals("soluongtinlienquan")).ToList();
            return int.Parse(soluong.FirstOrDefault().GiaTri);
        }

        private void UpdateViews(int id,int oldview)
        {
            dalBaiDang = new DALBaiDang();
            tblBaiDangChiTiet = new tbl_BaiDang_ChiTiet();
            tblBaiDangChiTiet.IDBD = id;
            tblBaiDangChiTiet.LuotXemBD = oldview + 1;
            dalBaiDang.UpdateView(tblBaiDangChiTiet);
        }
    }
}