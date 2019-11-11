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
    public partial class StudentUpdateForm : System.Web.UI.Page
    {
        string updatestudentId = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                student_fname.Text = StudentList.student_fname.ToString();
                student_lname.Text = StudentList.student_lname.ToString();
                student_number.Text = StudentList.student_number.ToString();
                student_enrolment.Text = StudentList.student_enrolment.ToString();
            }   
            updatestudentId = StudentList.student_ID;

            Button BtnUpdate = new Button()
            {
                Text = "Update",
            };
            updateForm.Controls.Add(BtnUpdate);
            BtnUpdate.Click += new EventHandler(UpdateInfo);

        }

        void UpdateInfo(object sender, EventArgs e)
        {

            string StudentFname = student_fname.Text;
            string StudentLname = student_lname.Text;
            string StudentNumber = student_number.Text;
            string EnrolmentDate = student_enrolment.Text;

            string query = "UPDATE students SET STUDENTFNAME = '" + StudentFname + "', STUDENTLNAME= '" + StudentLname + "', STUDENTNUMBER = '" + StudentNumber + "' WHERE STUDENTID = " + updatestudentId;
            // Getting Incorrect Value for dates
            //string query = "UPDATE students SET STUDENTFNAME = '" + StudentFname + "', STUDENTLNAME= '" + StudentLname + "', STUDENTNUMBER = '" + StudentNumber + "', ENROLMENTDATE = '" + EnrolmentDate + "' WHERE STUDENTID = " + updatestudentId;
            var db = new SCHOOLDB();
            List<Dictionary<String, String>> rs = db.List_Query(query);

            Debug.WriteLine(query);
            Response.Redirect("~/StudentList.aspx");

        }
    }
}