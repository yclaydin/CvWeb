using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using webcv.Model;

namespace webcv.Admin.Classes
{
    public class Resume_Class
    {
        public tbl_Resume_Content Select_Resume_Context()
        {
            using (Entity ent = new Entity())
            {
                tbl_Resume_Content Resume_Context = (from context in ent.tbl_Resume_Content select context).SingleOrDefault();
                return Resume_Context;
            }
        }

        public void Edit_Resume_Content(string perInfo, string work, string education, string skills, string lang)
        {
            using (Entity ent = new Entity())
            {
                tbl_Resume_Content resume_Context = (from context in ent.tbl_Resume_Content select context).SingleOrDefault();
                resume_Context.Professional_Info = perInfo;
                resume_Context.Work_Experince = work;
                resume_Context.Education = education;
                resume_Context.Skills = skills;
                resume_Context.Languages = lang;
                ent.SaveChanges();
            }
        }
    }
}