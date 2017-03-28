using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruongTieuHoc.DAL;
using TruongTieuHoc.Models;

namespace TruongTieuHoc
{
    public partial class ThuVienVideo : System.Web.UI.Page
    {
        private DBTruongTieuHocDataContext db = new DBTruongTieuHocDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListVideo();
            }
        }
        void ListVideo()
        {
            var list = from video in db.tbl_AnhClips
                       where video.HinhAnh == false && video.TrangThai == true
                       orderby video.ThuTu ascending
                       select new
                       {
                           urlhinh = XuLyUrl(video.Url),
                           urlvideo = video.Url,
                           tieude = video.TieuDe,
                           ngaycapnhat = FormatDate.DDMMYYYY(video.NgayCapNhat.Value)
                       };
            rptVideo.DataSource = list;
            rptVideo.DataBind();
        }

        string XuLyUrl(string url)
        {
            var kq = "cp/images/novideo.png";
            if (url.Contains('='))
            {
                if (url.Split('=').Count()>1)
                {
                    kq = "http://img.youtube.com/vi/" + url.Split('=')[1].Trim() + "/hqdefault.jpg";
                }
            }
            return kq;
        }
    }
}