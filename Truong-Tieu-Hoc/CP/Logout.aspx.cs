using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TruongTieuHoc.CP
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["IDAdmin"] = null;
            Response.Cookies["IDAdmin"].Expires = DateTime.Now;
            Response.Redirect("login.aspx");
        }
    }
}