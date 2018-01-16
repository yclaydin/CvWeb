using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webcv.Admin.Classes;
using webcv.Model;

namespace webcv.Admin.Controllers
{
    public partial class Project_Image_Add_Delete_Controller : System.Web.UI.UserControl
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
            drpProjects.Items.Clear();
            List<tbl_Projects> projects = pc.Select_Projects();
            ListItem li1 = new ListItem();
            li1.Text = "Proje Seçiniz";
            li1.Value = "0";
            drpProjects.Items.Add(li1);
            foreach (tbl_Projects project in projects)
            {
                ListItem li = new ListItem();
                li.Text = project.Project_Title;
                li.Value = project.Project_ID.ToString();
                drpProjects.Items.Add(li);
            }
        }
        private void Get_Images(int projectID)
        {
            List<tbl_Project_Images> projectImages = pc.Get_Project_Images(projectID);
            if (projectImages != null && projectImages.Count != 0)
            {
                grd_Images.DataSource = projectImages;
                grd_Images.DataBind();
            }
            else
            {
                grd_Images.DataSource = this.Get_EmptyDataTable();
                grd_Images.DataBind();
            }

        }
        public DataTable Get_EmptyDataTable()
        {
            DataTable dtEmpty = new DataTable();
            //Here ensure that you have added all the column available in your gridview
            dtEmpty.Columns.Add("Image_ID", typeof(int));
            dtEmpty.Columns.Add("Image_Path", typeof(string));
            DataRow datatRow = dtEmpty.NewRow();

            //Inserting a new row,datatable .newrow creates a blank row
            dtEmpty.Rows.Add(datatRow);//adding row to the datatable
            return dtEmpty;
        }
        protected void AddImage(object sender, EventArgs e)
        {
            try
            {
                string imagePath = ((TextBox)grd_Images.FooterRow.FindControl("txtImagePath")).Text;
                int projectID = Convert.ToInt16(drpProjects.SelectedItem.Value);
                pc.Add_Project_Image(projectID, imagePath);
                Get_Images(projectID);
                Response.Write("<script>alert('Image Added');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('ERROR!!!');</script>");
            }
        }

        protected void EditImage(object sender, GridViewEditEventArgs e)
        {
            grd_Images.EditIndex = e.NewEditIndex;
            int projectID = Convert.ToInt16(drpProjects.SelectedItem.Value);
            Get_Images(projectID);
        }

        protected void CancelEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grd_Images.EditIndex = -1;
            int projectID = Convert.ToInt16(drpProjects.SelectedItem.Value);
            Get_Images(projectID);
        }

        protected void UpdateImage(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                int imageID = Convert.ToInt32(((Label)grd_Images.Rows[e.RowIndex].FindControl("lblImageID")).Text);
                string imagePath = ((TextBox)grd_Images.Rows[e.RowIndex].FindControl("txtImagePath")).Text;
                pc.Update_Image_Path(imageID, imagePath);
                int projectID = Convert.ToInt16(drpProjects.SelectedItem.Value);
                grd_Images.EditIndex = -1;
                Get_Images(projectID);
                Response.Write("<script>alert('Image Path Updated');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('ERROR!!!');</script>");
            }
        }

        protected void DeleteImage(object sender, EventArgs e)
        {
            try
            {
                LinkButton lnkRemove = (LinkButton)sender;
                int imageID = Convert.ToInt32(lnkRemove.CommandArgument);
                pc.Delete_Image(imageID);
                int projectID = Convert.ToInt16(drpProjects.SelectedItem.Value);
                Get_Images(projectID);
                Response.Write("<script>alert('Image Deleted');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('ERROR!!!');</script>");
            }

        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            Get_Projects();
            grd_Images.PageIndex = e.NewPageIndex;
            grd_Images.DataBind();

        }

        protected void drpProjects_SelectedIndexChanged(object sender, EventArgs e)
        {
            int projectID = Convert.ToInt16(drpProjects.SelectedItem.Value);
            if (projectID == 0)
            {
                grd_Images.DataSource = null;
                grd_Images.DataBind();
            }
            else
            {
                Get_Images(projectID);
            }

        }
    }
}