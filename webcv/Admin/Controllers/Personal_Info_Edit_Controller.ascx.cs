using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webcv.Admin.Classes;
using webcv.Model;

namespace webcv.Admin.Controllers
{
    public partial class Personal_Info_Edit_Controller : System.Web.UI.UserControl
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
            txt_Name.Text = user.User_Name;
            txt_Surname.Text = user.User_Surname;
            txt_Phone.Text = user.User_Phone;
            txt_Fax.Text = user.User_Fax;
            txtFacebook.Text = user.User_Facebook_Url;
            txtTwitter.Text = user.User_Twitter_Url;
            txtGoogleplus.Text = user.User_GooglePlus_Url;
            txtHomeText.Text = user.Home_Page_Text;

        }

        protected void btn_Change_Click(object sender, EventArgs e)
        {
            try
            {
                pic.Edit_User_Info(txt_Name.Text, txt_Surname.Text, txt_Phone.Text, txt_Fax.Text, txtFacebook.Text, txtTwitter.Text, txtGoogleplus.Text, txtHomeText.Text);
                Response.Write("<script>alert('Changes Saved');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('ERROR!!!');</script>");
            }
        }
    }
}