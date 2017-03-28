using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruongTieuHoc.DAL;
using TruongTieuHoc.Models;

namespace TruongTieuHoc.Display.Content
{
    public partial class SliderArea : System.Web.UI.UserControl
    {
        private DBTruongTieuHocDataContext db = new DBTruongTieuHocDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListImage(SoluongSlide());
                TinMoiNhat();
            }
        }

        void ListImage(int soluonghienthi)
        {
            var list = (from hinh in db.tbl_AnhClips
                       where hinh.HinhAnh == true && hinh.TrangThai == true
                       orderby hinh.ThuTu ascending
                       select new
                       {
                           urlhinh = hinh.Url,
                           tieude = hinh.TieuDe                           
                       }).Take(soluonghienthi);
            rptHinh.DataSource = list;
            rptHinh.DataBind();
        }

        int SoluongSlide()
        {
            int kq = 5;
            var soluong = db.tbl_ThongTinCaiDats.Where(w => w.ViTri.Equals("soluongslidehinh")).ToList();
            try
            {
                kq = int.Parse(soluong.FirstOrDefault().GiaTri);
            }
            catch (Exception)
            {                
                throw;
            }
            return kq;
        }

       public string the1 = "";
       public string the2 = "";


        void TinMoiNhat()
        {
            var tintuc = (from ct in db.tbl_BaiDang_ChiTiets
                join n in db.tbl_BaiDang_Nhoms
                    on ct.IDNhom equals n.ID
                orderby ct.ThuTu ascending
                where n.IDNhom == "tintuc" && ct.TrangThai == true && ct.MoiNhatBD == true
                          select new
                          {
                              id = ct.IDBD,
                              link = ConvertQuery.ConvertToUnSign(ct.TieuDeBD),                              
                              tieude = ct.TieuDeBD,
                              tieuderutgon = Global.CatChuoi(ct.TieuDeBD, 100)
                          }).Take(6);           
            int i = 1;
            foreach (var tin in tintuc)
            {                
                if (i < 4)
                {
                    the1 += "<li><a href='chitiet.aspx?page=v." + tin.id + "." + tin.link + ".html' title='" + tin.tieude +
                            "'>" + tin.tieuderutgon + " </a></li>";                    
                }
                else
                {
                    the2 += "<li><a href='chitiet.aspx?page=v." + tin.id + "." + tin.link + ".html' title='" + tin.tieude +
                           "'>" + tin.tieuderutgon + " </a></li>";
                }
                i++;
            }           
        }
    }
}