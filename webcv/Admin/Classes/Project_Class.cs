using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using webcv.Model;

namespace webcv.Admin.Classes
{
    public class Project_Class
    {

        public List<tbl_Projects> Select_Projects()
        {
            using (Entity ent = new Entity())
            {
                List<tbl_Projects> Projects = (from context in ent.tbl_Projects select context).ToList();
                return Projects;
            }
        }
        public tbl_Projects Add_Project(string projectTitle, string projectDesc)
        {
            using (Entity ent = new Entity())
            {
                tbl_Projects project = new tbl_Projects()
                {
                    Project_Title = projectTitle,
                    Project_Description = projectDesc
                };
                ent.tbl_Projects.Add(project);
                ent.SaveChanges();
                return project;
            }
        }
        public void Update_Project(int projectID, string projectTitle, string projectDesc)
        {
            using (Entity ent = new Entity())
            {
                tbl_Projects project = (from context in ent.tbl_Projects
                                        where context.Project_ID == projectID
                                        select context).SingleOrDefault();
                project.Project_Title = projectTitle;
                project.Project_Description = projectDesc;
                ent.SaveChanges();
            }
        }

        public void Delete_Project(int projectID)
        {
            using (Entity ent = new Entity())
            {
                tbl_Projects project = (from context in ent.tbl_Projects
                                        where context.Project_ID == projectID
                                        select context).SingleOrDefault();

                ent.tbl_Projects.Remove(project);
                ent.SaveChanges();
            }
        }
        public List<tbl_Project_Images> Get_Project_Images(int projectID)
        {
            using (Entity ent = new Entity())
            {
                List<tbl_Project_Images> images = (from context in ent.tbl_Project_Images
                                                   where context.Project_ID == projectID
                                                   select context).ToList();
                return images;
            }
        }
        public void Add_Project_Image(int projectID, string imagePath)
        {
            using (Entity ent = new Entity())
            {
                tbl_Project_Images image = new tbl_Project_Images()
                {
                    Project_ID = projectID,
                    Image_Path = imagePath
                };
                ent.tbl_Project_Images.Add(image);
                ent.SaveChanges();
            }
        }
        public void Update_Image_Path(int imageID, string imagePath)
        {
            using (Entity ent = new Entity())
            {
                tbl_Project_Images image = (from context in ent.tbl_Project_Images
                                            where context.Image_ID == imageID
                                            select context).SingleOrDefault();
                image.Image_Path = imagePath;
                ent.SaveChanges();
            }
        }
        public void Delete_Image(int imageID)
        {
            using (Entity ent = new Entity())
            {
                tbl_Project_Images image = (from context in ent.tbl_Project_Images
                                              where context.Image_ID == imageID
                                            select context).SingleOrDefault();

                ent.tbl_Project_Images.Remove(image);
                ent.SaveChanges();
            }
        }

        public void Delete_All_Project_Image(int projectID)
        {
            using (Entity ent = new Entity())
            {
                List<tbl_Project_Images> images = (from context in ent.tbl_Project_Images
                                            where context.Project_ID == projectID
                                            select context).ToList();
                foreach (tbl_Project_Images image in images)
                {
                    ent.tbl_Project_Images.Remove(image);
                    ent.SaveChanges();
                }           
            }
        }
    }
}