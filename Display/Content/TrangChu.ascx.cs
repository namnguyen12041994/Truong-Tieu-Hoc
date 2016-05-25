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
            if (Request.QueryString["page"] == "" || Request.QueryString["page"] == null)
            {
                MainBody.Controls.Add(LoadControl("MainBody.ascx"));
            }
            else
            {
                MainBody.Controls.Add(LoadControl("Detail.ascx"));
            }
        }
    }
}