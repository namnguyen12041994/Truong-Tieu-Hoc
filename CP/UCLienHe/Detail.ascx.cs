using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruongTieuHoc.DAL;
using TruongTieuHoc.Models;

namespace TruongTieuHoc.CP.UCLienHe
{
    public partial class Detail : System.Web.UI.UserControl
    {
        private DBTruongTieuHocDataContext db = new DBTruongTieuHocDataContext();
        private tbl_LienHe tblLienHe = new tbl_LienHe();
        private DALLienHe dalLienHe;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                LoadData();
        }

        void LoadData()
        {
            NameValueCollection query = Request.QueryString;

            if (query.Get(0).Contains('.'))
            {
                int id = 0;
                try
                {
                    id = int.Parse(query.Get(0).Split('.')[1]);
                }
                catch (Exception)
                {
                    Response.Redirect("~/cp/lienhe.aspx");        
                }
                var detail = from lh in db.tbl_LienHes
                    where lh.ID == id
                    select new
                    {
                        hoten = lh.HoTen,
                        ngaynhan = FormatDate.DDMMYYYY(lh.NgayNhan.Value),
                        email = lh.Email,
                        noidung = lh.TinNhan
                    };                
                rptDetail.DataSource = detail;
                rptDetail.DataBind();
                
                dalLienHe = new DALLienHe();
                tblLienHe.ID = id;
                tblLienHe.TrangThaiDoc = true;
                dalLienHe.Update(tblLienHe);
            }
            else
            {
                Response.Redirect("~/cp/lienhe.aspx");
            }
        }
    }
}