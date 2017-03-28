using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruongTieuHoc.DAL;

namespace TruongTieuHoc.CP
{
    public partial class Login : System.Web.UI.Page
    {
        private DBTruongTieuHocDataContext db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["IDAdmin"] == null)
            {
                db = new DBTruongTieuHocDataContext();
                Session["IDAdmin"] = null;
                txtUsername.Focus();
            }
            else
            {
                Session["IDAdmin"] = Request.Cookies["IDAdmin"].Value;
                Response.Redirect("default.aspx");
            }
        }

        public string thongbao = "style='display: none;'";

        void LoginCheck(string u, string p)
        {            
            var user = from nd in db.tbl_NguoiDungs
                       where nd.TaiKhoan == u
                       where nd.MatKhau == p
                       select nd;

            if (user.Any())
            {
                Session["IDAdmin"] = user.First().TaiKhoan;

                if (chkRememberMe.Checked)
                {
                    var aCookie = new HttpCookie("IDAdmin")
                    {
                        Value = user.First().TaiKhoan,
                        Expires = DateTime.Now.AddDays(1)
                    };
                    Response.Cookies.Add(aCookie);
                }

                Response.Redirect("default.aspx");
            }
            else
            {
                thongbao = "style='display: block;'";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            LoginCheck(txtUsername.Text, txtPassword.Text);
        }
    }
}