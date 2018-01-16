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
    public partial class Projects_Controller : System.Web.UI.UserControl
    {
        Project_Class pc = new Project_Class();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Get_Projects();
            }
        }
        private void Get_Projects()
        {
            List<tbl_Projects> projects = pc.Select_Projects();
            foreach (tbl_Projects project in projects)
            {
                ltr_Projects.Text += "<div class=\"element\"><div class=\"left\"><main><div id=\"carousel\">";
                List<tbl_Project_Images> images = pc.Get_Project_Images(project.Project_ID);
                int sayac = 1;
                if (images.Count >= 2)
                {
                    int mainimgno = images.Count() / 2;
                    foreach (tbl_Project_Images image in images)
                    {
                        if (sayac < mainimgno - 2)
                        {
                            ltr_Projects.Text += "<div class=\"hideLeft\"><img src=\"" + image.Image_Path + "\"></div>";
                        }
                        else if (sayac == mainimgno - 2)
                        {
                            ltr_Projects.Text += "<div class=\"prevLeftSecond\"><img src=\"" + image.Image_Path + "\"></div>";
                        }
                        else if (sayac == mainimgno - 1)
                        {
                            ltr_Projects.Text += "<div class=\"prev\"><img src=\"" + image.Image_Path + "\"></div>";
                        }
                        else if (sayac == mainimgno)
                        {
                            ltr_Projects.Text += "<div class=\"selected\"><img src=\"" + image.Image_Path + "\"></div>";
                        }
                        else if (sayac == mainimgno + 1)
                        {
                            ltr_Projects.Text += "<div class=\"next\"><img src=\"" + image.Image_Path + "\"></div>";
                        }
                        else if (sayac == mainimgno + 2)
                        {
                            ltr_Projects.Text += "<div class=\"nextRightSecond\"><img src=\"" + image.Image_Path + "\"></div>";
                        }
                        else if (sayac > mainimgno + 2)
                        {
                            ltr_Projects.Text += "<div class=\"hideRight\"><img src=\"" + image.Image_Path + "\"></div>";
                        }
                        sayac++;
                    }
                }
                else
                {
                    foreach (tbl_Project_Images image in images)
                    {

                        ltr_Projects.Text += "<div class=\"selected\"><img src=\"" + image.Image_Path + "\"></div>";
                    }
                }
                ltr_Projects.Text += "</div></main></div><div class=\"right\"><div class=\"circle blue\"><span>" + project.Project_Title + "</span></div><h1>" + project.Project_Title + "</h1><p>" + project.Project_Description + "</p></div></div>";
            }
        }
    }
}