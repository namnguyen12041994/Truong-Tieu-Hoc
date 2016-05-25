using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TruongTieuHoc.Display.Content
{
    public partial class TrangChu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString.AllKeys.Count() == 0)
                MainBody.Controls.Add(LoadControl("MainBody.ascx"));
            else
            {
                string n = Request.QueryString.GetKey(0);
                switch (n)
                {
                    case "page":
                        MainBody.Controls.Add(LoadControl("Detail.ascx"));
                        break;
                    case "cata":
                        MainBody.Controls.Add(LoadControl("ViewCatalo.ascx"));
                        break;
                    default: MainBody.Controls.Add(LoadControl("MainBody.ascx"));
                        break;
                }
            }            
        }
    }
}