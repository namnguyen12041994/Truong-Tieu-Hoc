using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruongTieuHoc.DAL;

namespace TruongTieuHoc.CP.UCBaiViet
{
    public partial class UDanhSachBaiViet : System.Web.UI.UserControl
    {
        private DBTruongTieuHocDataContext db;

        protected void Page_Load(object sender, EventArgs e)
        {
            db = new DBTruongTieuHocDataContext();
            Get_BaiVietList();
        }

        void Get_BaiVietList()
        {
            var list = from bv in db.tbl_BaiDang_ChiTiets
                       join nd in db.tbl_NguoiDungs
                       on bv.IDNguoiDang equals nd.IDAdmin
                       
                 select new
                {
                    id = bv.IDBD,
                    tieude = bv.TieuDeBD,
                    tomtat = bv.TomTatBD,
                    hinhanh = bv.HinhAnhBD,
                    luotxem = bv.LuotXemBD,
                    ngaydang = bv.NgayDangBD.Value.ToShortDateString(),
                    nguoidang = nd.Ho + " " + nd.Ten,
                    uutien = bv.ThuTu,
                    trangthai = (bv.TrangThai == true)? "Hiển thị": "Ẩn",
                    nhom = bv.IDNhom
                };

            rptDanhSachBaiViet.DataSource = list;
            rptDanhSachBaiViet.DataBind();
        }
    }
}