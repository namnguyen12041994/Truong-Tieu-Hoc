using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;
using TruongTieuHoc.DAL;

namespace TruongTieuHoc.CP
{
    public partial class LienHe : System.Web.UI.Page
    {
       private DALLienHe _adlLienHe = new DALLienHe();
        private  tbl_LienHe _tblLienHe;
        protected void Page_Load(object sender, EventArgs e)
        {
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
                        case "detail":
                            MainBody.Controls.Add(LoadControl("UCLienHe/Detail.ascx"));
                            break;
                        default:
                            MainBody.Controls.Add(LoadControl("UCLienHe/UAllContact.ascx"));
                            break;
                    }
                }
                else
                {
                    MainBody.Controls.Add(LoadControl("UCLienHe/UAllContact.ascx"));
                }
            }
            else
            {
                MainBody.Controls.Add(LoadControl("UCLienHe/UAllContact.ascx"));
            }
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
                MainBody.Controls.Add(LoadControl("UCLienHe/UAllContact.ascx"));
            }
            _adlLienHe.Delete(id);
            Response.Redirect("~/cp/lienhe.aspx");
        }        
    }
}