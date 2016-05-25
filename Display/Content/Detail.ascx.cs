using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruongTieuHoc.DAL;

namespace TruongTieuHoc.Display.Content
{
    public partial class Detail : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadContent(Request.QueryString["page"]);
        }

        void LoadContent(string query)
        {
            int idbd =0;
            try
            {
                idbd = int.Parse(query);
            }
            catch (Exception)
            {
                              
            }
                
            DBTruongTieuHocDataContext db = new DBTruongTieuHocDataContext();

            var noidung = from ct in db.tbl_BaiDang_ChiTiets
                join nhom in db.tbl_BaiDang_Nhoms on ct.IDNhom equals nhom.ID
                join nguoidung in db.tbl_NguoiDungs on ct.IDNguoiDang equals nguoidung.IDAdmin
                where ct.IDBD == idbd
                select new
                {
                    tennhom = nhom.TenNhom,
                    tieude = ct.TieuDeBD,
                    noidungchinh = ct.NoiDungBD,
                    ngaydang = ct.NgayDangBD,
                    tacgia = nguoidung.Ho + " " + nguoidung.Ten
                };

            rptChiTiet.DataSource = noidung;
            rptChiTiet.DataBind();
        }

    }
}