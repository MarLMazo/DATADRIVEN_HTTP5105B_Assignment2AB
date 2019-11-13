using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Diagnostics;

namespace DataDrivenDataBase_5101B
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    //Storing the data of input fields to variables.
                    string Username = username.Text.ToString();
                    string Password = password.Text.ToString();

                    //making an object of SCHOOLDB class.
                    var db = new SCHOOLDB();

                    //Setting an admin.
                    string admin_username = "N1679";
                    string admin_password = "Jennifer";

                    //checking if the entered username is not an admin
                    if(Username != admin_username)
                    {    
                        //fetching student's first name from database on the basis of student number used as username.
                        Dictionary<String, String> student_record = db.FindStudent(Username);
                        if(Password == student_record["STUDENTFNAME"])
                        {
                            Response.Redirect("~/test.html");
                        }
                        else
                        {
                            display.InnerHtml = "INVALID USERNAME OR PASSWORD";
                        }
                    }
                    //if username is an admin username
                    else
                    {
                        if(Password == admin_password)
                        {
                            Response.Redirect("~/StudentList.aspx");
                        }
                        else
                        {
                            display.InnerHtml = "INVALID USERNAME OR PASSWORD";
                        }
                    }

                    /*string adminName = "N1679";
                    List<Dictionary<String, String>> rs = db.List_Query("select STUDENTFNAME from students where STUDENTNUMBER like '" + adminName + "'");

                    foreach (Dictionary<String, String> row in rs)
                    {
                        string studentName = row["STUDENTFNAME"];

                        if (user_name == adminName && pass_word == studentName)
                        {
                            Response.Redirect("~/StudentList.aspx");
                        }
                        else
                        {
                            display.InnerHtml = "ERROR!!";
                        }
                        Debug.WriteLine(studentName);
                    }*/

                    
                }
            }
        }
    }
}