using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruongTieuHoc.DAL;
using TruongTieuHoc.Models;

namespace TruongTieuHoc.CP.UCLienHe
{
    public partial class UAllContact : System.Web.UI.UserControl
    {
        private DBTruongTieuHocDataContext db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db = new DBTruongTieuHocDataContext();
                Get_LienHeAll();
            }            
        }

        public void Get_LienHeAll()
        {
            var all = from nd in db.tbl_LienHes                     
                      orderby nd.NgayNhan descending
                      select new
                       {
                           id = nd.ID,
                           idgia = nd.ID + 3 * nd.ID,
                           hoten = nd.HoTen,
                           ngaynhan = FormatDate.DDMMYYYY(nd.NgayNhan.Value),
                           email = nd.Email,
                           noidung = Global.CatChuoi(nd.TinNhan, 50),
                           trangthai = (nd.TrangThaiDoc == true) ? "Đã đọc" : "Chưa đọc"
                       };
            
            rptAllMess.DataSource = all;
            rptAllMess.DataBind();

            var notread = from nd in db.tbl_LienHes
                          where nd.TrangThaiDoc == false
                          orderby nd.NgayNhan descending
                          select new
                       {
                           id = nd.ID,
                           idgia = nd.ID + 3 * nd.ID,
                           hoten = nd.HoTen,
                           ngaynhan = FormatDate.DDMMYYYY(nd.NgayNhan.Value),
                           email = nd.Email,
                           noidung = Global.CatChuoi(nd.TinNhan, 50),                          
                       };
            rptNotRead.DataSource = notread;
            rptNotRead.DataBind();

            var read = from nd in db.tbl_LienHes
                       where nd.TrangThaiDoc == true
                       orderby nd.NgayNhan descending 
                          select new
                          {
                              id = nd.ID,
                              idgia = nd.ID + 3 * nd.ID,
                              hoten = nd.HoTen,
                              ngaynhan = FormatDate.DDMMYYYY(nd.NgayNhan.Value),
                              email = nd.Email,
                              noidung = Global.CatChuoi(nd.TinNhan, 50),                             
                          };
            rptRead.DataSource = read;
            rptRead.DataBind();
        }
    }
}