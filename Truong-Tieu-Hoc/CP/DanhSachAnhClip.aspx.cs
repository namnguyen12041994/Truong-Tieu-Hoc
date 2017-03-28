using System;
using System.Collections.Generic;
using System.Linq;
using System.Collections.Specialized;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruongTieuHoc.DAL;

namespace TruongTieuHoc.CP
{
    public partial class DanhSachAnhClip : System.Web.UI.Page
    {
        private DBTruongTieuHocDataContext db = new DBTruongTieuHocDataContext();
        private tbl_AnhClip tblAnhClip = new tbl_AnhClip();
        private  DALAnhClip dalAnhClip = new DALAnhClip();
        protected void Page_Load(object sender, EventArgs e)
        {            
            ListImage();
            ListClip();
            NameValueCollection query = Request.QueryString;

            if (query.HasKeys())
            {
                if (query.Get(0).Contains('.'))
                {
                    switch (query.GetKey(0))
                    {
                        case "del":
                            Delete(query.Get(0));
                            break;
                        case "edit":
                            Edit(query.Get(0));
                            break;
                        case "add":
                            Add();
                            break;
                        default:                            
                            break;
                    }
                }                
            }
            
        }

        void ListImage()
        {
            var list = from hinh in db.tbl_AnhClips
                       where hinh.HinhAnh == true
                       orderby hinh.NgayCapNhat descending
                       select new
                       {
                           id = hinh.ID,
                           idgia = hinh.ID*3/4,
                           url = hinh.Url,
                           tieude = hinh.TieuDe,
                           ngaycapnhat = hinh.NgayCapNhat.Value.ToShortDateString()
                       };

            rptHinh.DataSource = list;
            rptHinh.DataBind();
        }

        void ListClip()
        {
            var list = from clip in db.tbl_AnhClips
                       where clip.HinhAnh == false
                       orderby clip.NgayCapNhat descending
                       select new
                       {
                           id = clip.ID,
                           idgia = clip.ID * 3 / 4,
                           url = clip.Url,
                           tieude = clip.TieuDe,
                           ngaycapnhat = clip.NgayCapNhat.Value.ToShortDateString()
                       };

            rptClip.DataSource = list;
            rptClip.DataBind();
        }

        void Delete(string value)
        {
            int id = 0;
            try
            {
                id = int.Parse(value.Split('.')[1]);
            }
            catch (Exception)
            {
                Response.Redirect("danhsachanhclip.aspx");
            }
            dalAnhClip.Delete(id);
            Response.Redirect("danhsachanhclip.aspx");
        }

        void Edit(string value)
        {

            Response.Redirect("danhsachanhclip.aspx");
        }
        void Add()
        {

            Response.Redirect("danhsachanhclip.aspx");
        }
    }
}