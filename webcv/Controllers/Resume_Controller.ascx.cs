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
    public partial class Resume_Controller : System.Web.UI.UserControl
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
            tbl_Resume_Content resume_Content = rc.Select_Resume_Context();
            ltr_Education.Text = resume_Content.Education;
            ltr_Professional_Info.Text = resume_Content.Professional_Info;
            ltr_Work_Experience.Text = resume_Content.Work_Experince;

            string[] skills_dizi = resume_Content.Skills.Split(',');
            for (int i = 0; i < skills_dizi.Length; i++)
            {
                ltr_Skils.Text += "<li> " + skills_dizi[i] + " </li>"; 
            }

            string[] lang_dizi = resume_Content.Languages.Split(',');
            for (int i = 0; i < lang_dizi.Length; i++)
            {
                ltr_Languages.Text +="<li> "+lang_dizi[i]+" </li>";
            }
        }
    }
}