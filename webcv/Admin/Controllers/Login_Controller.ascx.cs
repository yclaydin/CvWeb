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
    public partial class Login_Controller : System.Web.UI.UserControl
    {
        Personal_Info_Class pic = new Personal_Info_Class();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserID"]!=null && Session["UserEmail"]!=null)
                {
                    Response.Redirect("Default.aspx");
                }
            }
        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            string email = txt_Email.Text;
            string password = txt_Password.Text;
            tbl_User user = pic.Verify_User(email, password);
            if (user!=null)
            {
                Session["UserID"] = user.User_ID.ToString();
                Session["UserEmail"] = user.User_Email;
                Response.Redirect("Default.aspx");
            }
            else
            {
                ltr_Alert.Text = "Email / Password Wrong";
            }
        }
    }
}