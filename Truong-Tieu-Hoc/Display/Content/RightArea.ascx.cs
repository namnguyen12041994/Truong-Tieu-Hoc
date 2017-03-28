using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace TruongTieuHoc.Display.Content
{
    public partial class RightPage : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbOnline.Text = Application["KhachTruyCap"].ToString();
            double Khach = 0;
            TextReader str = new StreamReader(Server.MapPath("count_visit.txt"));
            Khach = Convert.ToDouble(str.ReadLine());
            str.Close();
            str.Dispose();
            try
            {
                Khach++;
                TextWriter wrt = new StreamWriter(Server.MapPath("count_visit.txt"));
                wrt.Write(Khach);
                wrt.Close();
                wrt.Dispose();
            }
            catch (Exception)
            {                   
                throw;
            }
            lbTongTruyCap.Text = Khach.ToString();
        }
    }
}