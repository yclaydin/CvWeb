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
    public partial class Project_Add_Edit_Delete_Controller : System.Web.UI.UserControl
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
            grd_Projects.DataSource = projects;
            grd_Projects.DataBind();
        }

        protected void AddProject(object sender, EventArgs e)
        {
            try
            {
                string projectTitle = ((TextBox)grd_Projects.FooterRow.FindControl("txtProjectTitleAdd")).Text;
                string projectDescription = ((TextBox)grd_Projects.FooterRow.FindControl("txtProjectDescriptionAdd")).Text;
                tbl_Projects newProject = pc.Add_Project(projectTitle, projectDescription);
                pc.Add_Project_Image(newProject.Project_ID, "https://www.walmart.ca/assets/img/no-image-med_en.png");
                Get_Projects();
                Response.Write("<script>alert('Project Added');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('ERROR!!!');</script>");
            }
        }

        protected void EditProject(object sender, GridViewEditEventArgs e)
        {
            grd_Projects.EditIndex = e.NewEditIndex;
            Get_Projects();
        }

        protected void CancelEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grd_Projects.EditIndex = -1;
            Get_Projects();
        }

        protected void UpdateProject(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                int projectID = Convert.ToInt32(((Label)grd_Projects.Rows[e.RowIndex].FindControl("lblProjectID")).Text);
                string projectTitle = ((TextBox)grd_Projects.Rows[e.RowIndex].FindControl("txtProjectTitleEdit")).Text;
                string projectDescription = ((TextBox)grd_Projects.Rows[e.RowIndex].FindControl("txtProjectDescriptionEdit")).Text;
                pc.Update_Project(projectID, projectTitle, projectDescription);
                grd_Projects.EditIndex = -1;
                Get_Projects();
                Response.Write("<script>alert('Project Updated');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('ERROR!!!');</script>");
            }
        }

        protected void DeleteProject(object sender, EventArgs e)
        {
            try
            {
                LinkButton lnkRemove = (LinkButton)sender;
                int projectID = Convert.ToInt32(lnkRemove.CommandArgument);
                pc.Delete_All_Project_Image(projectID);
                pc.Delete_Project(projectID);
                Get_Projects();
                Response.Write("<script>alert('Project Deleted');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('ERROR!!!');</script>");
            }

        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            Get_Projects();
            grd_Projects.PageIndex = e.NewPageIndex;
            grd_Projects.DataBind();

        }
    }
}