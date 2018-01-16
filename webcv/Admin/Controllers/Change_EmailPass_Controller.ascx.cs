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
    public partial class Change_EmailPass_Controller : System.Web.UI.UserControl
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
            txt_Email.Text = user.User_Email;
        }

        protected void btn_Change_Click(object sender, EventArgs e)
        {
            try
            {
                string email = txt_Email.Text;
                string currentPass = txt_CurrentPass.Text;
                string newPass = txt_Password.Text;
                Boolean result = pic.Verify_Password(currentPass);
                if (result==true)
                {
                    pic.Change_EmailPass(email, newPass);
                    ltr_Alert.Text = "Changes Saved";
                }
                else
                {
                    ltr_Alert.Text = "Current Password Wrong";
                }
               
            }
            catch (Exception)
            {
                ltr_Alert.Text = "Error";
            }
        }
    }
}