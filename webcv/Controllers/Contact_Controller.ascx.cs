using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webcv.Admin.Classes;
using webcv.Model;

namespace webcv.Controllers
{
    public partial class Contact_Controller : System.Web.UI.UserControl
    {
        Personal_Info_Class pic = new Personal_Info_Class();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Get_User_Info();
            }
        }

        private void Get_User_Info()
        {
            tbl_User user = pic.Select_User_Info();
            ltr_Phone.Text = user.User_Phone;
            ltr_Mail.Text = "<a href=\"mailto:" + user.User_Email + "\">" + user.User_Email + "</a>";

            ltr_Facebook.Text = "<a href=\"" + user.User_Facebook_Url + "\" target=\"_blank\"> <i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a>";
            ltr_Twitter.Text = "<a href=\"" + user.User_Twitter_Url + "\" target=\"_blank\"> <i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a>";
            ltr_GooglePlus.Text = "<a href=\"" + user.User_GooglePlus_Url + "\" target=\"_blank\"> <i class=\"fa fa-google-plus\" aria-hidden=\"true\"></i></a>";
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                SmtpClient Kaynak = new SmtpClient();
                Kaynak.Credentials = new System.Net.NetworkCredential("abc@gmail.com", "12345");
                Kaynak.Host = "smtp.gmail.com";
                Kaynak.Port = 587;
                MailAddress Gonderen = new MailAddress(txtEmail.Text, txtName.Text);
                MailAddress Giden = new MailAddress("abc@gmail.com", "MYSite");
                MailMessage Mesaj = new MailMessage(Gonderen, Giden);
                Mesaj.From = Giden;
                Mesaj.To.Add("abc@gmail.com");
                Mesaj.Subject = txtSubject.Text;
                Mesaj.Body = "<br/>Sender;<br/><br/>Name : " + txtName.Text + "<br/>E-mail : " + txtEmail.Text + "<br/>Message : " + txtMessage.Text;
                Mesaj.IsBodyHtml = true;
                Kaynak.EnableSsl = true;
                Kaynak.Send(Mesaj);
                Response.Write("<script>alert('MESSAGE SENT');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('ERROR!!! MESSAGE COULDN'T BE SEND');</script>");
            }
        }
    }
}