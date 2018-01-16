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
    public partial class Resume_Content_Edit_Controller : System.Web.UI.UserControl
    {
        Resume_Class rc = new Resume_Class();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Get_Resume_Content();
            }
        }

        private void Get_Resume_Content()
        {
            tbl_Resume_Content content = rc.Select_Resume_Context();
            txt_ProInfo.Text = content.Professional_Info;
            txt_Work.Text = content.Work_Experince;
            txt_Education.Text = content.Education;
            txt_Skills.Text = content.Skills;
            txt_Languages.Text = content.Languages;
        }

        protected void btn_Change_Click(object sender, EventArgs e)
        {
            try
            {
                string proInfo = txt_ProInfo.Text;
                string work = txt_Work.Text;
                string education = txt_Education.Text;
                string skills = txt_Skills.Text;
                string lang = txt_Languages.Text;
                rc.Edit_Resume_Content(proInfo, work, education, skills, lang);
                Response.Write("<script>alert('Changes Saved');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('ERROR!!');</script>");
            }
        }
    }
}