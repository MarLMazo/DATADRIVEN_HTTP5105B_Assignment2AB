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

            var query = "Select * from students WHERE STUDENTNUMBER LIKE '%" + StudentNumber + "%'";
            var db = new SCHOOLDB();
            List<Dictionary<String, String>> rs = db.List_Query(query);
            foreach (Dictionary<String, String> row in rs)
            {
                string studentID = row["STUDENTID"];
                string studentfirstname = row["STUDENTFNAME"];
                string studentlastname = row["STUDENTLNAME"];
                string enrolmentdate = row["ENROLMENTDATE"];
                StudentDetails.InnerHtml = "<div class=\"Detailslistitem\">";
                StudentDetails.InnerHtml += "<div> Name: "+ studentfirstname +" "+ studentlastname+ "</div>";
                StudentDetails.InnerHtml += "<div> Student Number: " + StudentNumber + "</div>";
                StudentDetails.InnerHtml += "<div> Enrolment: " + enrolmentdate + "</div> </div>";

            }
        }
    }
}