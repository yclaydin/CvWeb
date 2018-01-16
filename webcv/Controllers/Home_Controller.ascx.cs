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
    public partial class Home_Controller : System.Web.UI.UserControl
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
            ltr_HomeText.Text = user.Home_Page_Text;
        }
    }
}