using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webcv.Admin.Classes;
using webcv.Model;

namespace webcv.Controllers
{
    public partial class Footer_Controller : System.Web.UI.UserControl
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
            ltr_Name_Surname.Text = user.User_Name + " " + user.User_Surname;
            ltr_Phone.Text = user.User_Phone;
            ltr_Fax.Text = user.User_Fax;
            ltr_Mail.Text = "<a href=\"mailto:"+ user.User_Email + "\">"+ user.User_Email + "</a>";
            ltr_Social_Media_Account.Text = "<a href=\""+user.User_Facebook_Url+ "\" target=\"_blank\"> <i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a><a href=\"" + user.User_Twitter_Url + "\" target=\"_blank\"> <i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a><a href=\"" + user.User_GooglePlus_Url + "\" target=\"_blank\"> <i class=\"fa fa-google-plus\" aria-hidden=\"true\"></i></a>";
        }
    }
}