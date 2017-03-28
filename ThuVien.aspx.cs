using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruongTieuHoc.Models;
using TruongTieuHoc.DAL;

namespace TruongTieuHoc
{
    public partial class ThuVien : System.Web.UI.Page
    {
        private DBTruongTieuHocDataContext db = new DBTruongTieuHocDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListImage();                
            }            
        }

        void ListImage()
        {
            var list = from hinh in db.tbl_AnhClips
                         where hinh.HinhAnh == true && hinh.TrangThai == true
                         orderby hinh.ThuTu ascending 
                         select new
                         {
                             url = hinh.Url,
                             tieude = hinh.TieuDe,
                             ngaycapnhat = FormatDate.DDMMYYYY(hinh.NgayCapNhat.Value)
                         };
            rptHinh.DataSource = list;
            rptHinh.DataBind();
        }
        
    }
}