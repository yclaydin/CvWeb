using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using webcv.Model;

namespace webcv.Admin.Classes
{
    public class Personal_Info_Class
    {

        public tbl_User Select_User_Info()
        {
            using (Entity ent = new Entity())
            {
                return (from context in ent.tbl_User select context).SingleOrDefault();
            }
        }
        public void Edit_User_Info(string name, string surname, string phone, string fax, string facebook, string twitter, string googleplus, string homeText)
        {
            using (Entity ent = new Entity())
            {
                tbl_User user = (from context in ent.tbl_User select context).SingleOrDefault();
                user.User_Name = name;
                user.User_Surname = surname;
                user.User_Phone = phone;
                user.User_Fax = fax;
                user.User_Facebook_Url = facebook;
                user.User_Twitter_Url = twitter;
                user.User_GooglePlus_Url = googleplus;
                user.Home_Page_Text = homeText;
                ent.SaveChanges();
            }
        }
        public tbl_User Verify_User(string email, string password)
        {
            using (Entity ent = new Entity())
            {
                tbl_User result = (from context in ent.tbl_User
                                   where context.User_Email == email && context.User_Password == password
                                   select context).SingleOrDefault();

                return result;
            }
        }
        public Boolean Verify_Password(string password)
        {
            using (Entity ent = new Entity())
            {
                tbl_User result = (from context in ent.tbl_User
                                   where context.User_Password == password
                                   select context).SingleOrDefault();

                if (result != null)
                {
                    return true;
                }
                return false;
            }
        }

        public void Change_EmailPass(string email, string password)
        {
            using (Entity ent = new Entity())
            {
                tbl_User user = (from context in ent.tbl_User select context).SingleOrDefault();
                user.User_Email = email;
                user.User_Password = password;
                ent.SaveChanges();
            }

        }
    }
}