using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruongTieuHoc.DAL;
using TruongTieuHoc.Models;

namespace TruongTieuHoc
{
    public partial class DanhMuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {
                NameValueCollection query = Request.QueryString;

                if (query.HasKeys())
                {
                    if (query.GetKey(0) == "cata")
                        try
                        {
                            string q = query.Get(0).Trim().Split('.')[0];
                            LoadContent(q);
                        }
                        catch (Exception)
                        {
                            Response.Redirect("error.aspx");
                        }
                        
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
        public string tennhom = "";
        void LoadContent(string query)
        {
            DBTruongTieuHocDataContext db = new DBTruongTieuHocDataContext();

            var noidung = from ct in db.tbl_BaiDang_ChiTiets
                          join nhom in db.tbl_BaiDang_Nhoms on ct.IDNhom equals nhom.ID
                          where nhom.IDNhom == query && ct.TrangThai == true
                          orderby ct.ThuTu ascending
                          select new
                          {
                              id = ct.IDBD,
                              link = ConvertQuery.ConvertToUnSign(ct.TieuDeBD),
                              tennhom = nhom.TenNhom,
                              hinhanh = ct.HinhAnhBD,
                              tieude = ct.TieuDeBD,
                              tomtat = ct.TomTatBD
                          };

            rptCatalog.DataSource = noidung;
            rptCatalog.DataBind();
            if (noidung.Any())
                tennhom = noidung.FirstOrDefault().tennhom;
        }
    }
}