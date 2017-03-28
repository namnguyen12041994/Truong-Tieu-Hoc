using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruongTieuHoc.DAL;

namespace TruongTieuHoc.CP
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        private DBTruongTieuHocDataContext db;
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (Session["IDAdmin"] == null && Request.Cookies["IDAdmin"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                db = new DBTruongTieuHocDataContext();
            }
        }

        public string GetUser_Name(bool value)
        {
            string taikhoan = Session["IDAdmin"]?.ToString() ?? "admin";

            var name = from nd in db.tbl_NguoiDungs
                       where nd.TaiKhoan == taikhoan
                       select nd;

            if (value)
            {
                return name.FirstOrDefault()?.AnhDaiDien;
            }

            return name.FirstOrDefault()?.Ten;
        }       

        public string Get_LienHeQuantity()
        {
            var name = from nd in db.tbl_LienHes
                where nd.TrangThaiDoc == false
                orderby nd.NgayNhan descending
                select new
                {
                    id = nd.ID,
                    idgia = nd.ID + 3*nd.ID,
                    hoten = nd.HoTen,
                    noidung = Global.CatChuoi(nd.TinNhan, 80),
                    ngaynhan = nd.NgayNhan.Value.ToShortDateString()
                };

            var limit = name.Take(3);

            rptLienHe.DataSource = limit;
            rptLienHe.DataBind();

            return name.Count().ToString();
        }
    }
}