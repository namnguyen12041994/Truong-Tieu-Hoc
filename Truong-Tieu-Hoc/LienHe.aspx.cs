using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruongTieuHoc.DAL;
namespace TruongTieuHoc
{
    public partial class LienHe : System.Web.UI.Page
    {
        private DALLienHe dalLienHe;
        private tbl_LienHe tblLienHe;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (SaveToDB())
            {
                txtName.Text = "";
                txtEmail.Text = "";
                txtContent.Text = "";
                lbAlert.Text = @"<h3 style='font-weight:bold'>Lời nhắn của bạn đã được gửi cho chúng tôi, chúng tôi sẽ sớm phản hồi lại cho bạn, cảm ơn bạn! <a href='./'>Quay về trang chủ</a></h3>";
            }
            else
            {
                lbAlert.Text = @"<h3 style='font-weight:bold'>Gửi tin nhắn thất bại, bạn vui lòng thực hiện lại hoặc quay về <a href='./'>Trang chủ</a>. Cảm ơn bạn</h3>";
            }
        }

        bool SaveToDB()
        {
            dalLienHe = new DALLienHe();
            tblLienHe = new tbl_LienHe
            {
                HoTen = txtName.Text,
                Email = txtEmail.Text,
                NgayNhan = DateTime.Now,
                TinNhan = txtContent.Text,
                TrangThaiDoc = false
            };
            if (dalLienHe.Insert(tblLienHe))
                return true;
            return false;
        }
    }
}