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
    public partial class StudentAddForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button BtnSubmit = new Button()
            {
                Text = "Submit",
            };
            addForm.Controls.Add(BtnSubmit);

            BtnSubmit.Click += new EventHandler(SubmitInfo);
        }

        void SubmitInfo(object sender, EventArgs e)
        {
            string StudentFname = student_fname.Text.ToString();
            string StudentLname = student_lname.Text.ToString();
            string StudentNumber = student_number.Text.ToString();


            string query = "INSERT INTO students (STUDENTFNAME,STUDENTLNAME,STUDENTNUMBER) VALUES ('" + StudentFname + "','" + StudentLname + "','" + StudentNumber + "')";

            var db = new SCHOOLDB();
            List<Dictionary<String, String>> rs = db.List_Query(query);

            Debug.WriteLine(query);
            Response.Redirect("~/StudentList.aspx");
        }
    }
}