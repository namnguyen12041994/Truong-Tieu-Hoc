using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruongTieuHoc.DAL;

namespace TruongTieuHoc.Display.Content
{
    public partial class ViewCatalo : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadContent(Request.QueryString["Cata"]);
        }

        public string tennhom = "";

        void LoadContent(string query)
        {                          
            DBTruongTieuHocDataContext db = new DBTruongTieuHocDataContext();

            var noidung = from ct in db.tbl_BaiDang_ChiTiets
                join nhom in db.tbl_BaiDang_Nhoms on ct.IDNhom equals nhom.ID                
                where nhom.IDNhom == query
                select new
                {
                    tennhom = nhom.TenNhom,
                    hinhanh = ct.HinhAnhBD,
                    tieude = ct.TieuDeBD,
                    tomtat = ct.TomTatBD                    
                };

            rptCatalog.DataSource = noidung;
            rptCatalog.DataBind();           
        }
    }
}