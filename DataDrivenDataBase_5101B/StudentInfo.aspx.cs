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
    public partial class StudentInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string StudentNumber = LoginForm.Username_user;
            
            //Debug.WriteLine(Student);

            var all_details_query = "Select * from students WHERE STUDENTNUMBER LIKE '%" + StudentNumber + "%'";
           
            var db = new SCHOOLDB();
            List<Dictionary<String, String>> rs = db.List_Query(all_details_query);
            foreach (Dictionary<String, String> row in rs)
            {
                string studentID = row["STUDENTID"];
                string studentfirstname = row["STUDENTFNAME"];
                string studentlastname = row["STUDENTLNAME"];
                string enrolmentdate = row["ENROLMENTDATE"];

                StudentDetails.InnerHtml = "<div class=\"Detailslistitem\" style=\"text-align:center;\">";
                StudentDetails.InnerHtml += "<div> Name: "+ studentfirstname +" "+ studentlastname+ "</div>";
                StudentDetails.InnerHtml += "<div> Student Number: " + StudentNumber + "</div>";
                StudentDetails.InnerHtml += "<div> Enrolment: " + enrolmentdate + "</div> </div>";

            }

            var classes_query = "SELECT studentnumber,students.studentid,classname from classes inner join studentsxclasses on studentsxclasses.classid = classes.classid  inner join students on students.STUDENTID = studentsxclasses.STUDENTID where studentnumber = '" + StudentNumber + "'";
            List<Dictionary<String, String>> EnrolledClasses = db.List_Query(classes_query);
            //checking if record exists
            if (!EnrolledClasses.Any())
            {
                StudentDetails.InnerHtml += "<div style=\"padding:1em; text-align:center; color:red;\">No classes enrolled</div>";
            }
            else
            {
                StudentDetails.InnerHtml += "<div style=\"font-size:1.125em; font-weight: bold; padding:1em; text-align:center;\">Classes Enrolled</div>";
                foreach (Dictionary<String, String> row in EnrolledClasses)
                {
                    string className = row["classname"];
                    StudentDetails.InnerHtml += "<div style=\"text-align:center;\">" + className+"</div>";
                }
            }
        }
    }
}