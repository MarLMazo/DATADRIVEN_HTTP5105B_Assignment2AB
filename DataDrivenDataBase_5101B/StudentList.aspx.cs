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
    public partial class StudentList : System.Web.UI.Page
    {
        //Strings to be used to send values to the other aspx file
        public static string student_fname = "";
        public static string student_lname = "";
        public static string student_number = "";
        public static string student_enrolment = "";
        public static string student_ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
                An alternate way to fetch data without the SCHOOLDB.cs class
                https://dev.mysql.com/doc/connector-net/en/connector-net-tutorials-sql-command.html
            */
            DisplayData();
        }


        public void DisplayData()
        {
            Button BtnAdd = new Button()
            {
                Text = "Add",
            };

            students_result.Controls.Add(BtnAdd);
            //Creating eventlistener to the button BtnAdd
            BtnAdd.Click += new EventHandler(AddData);

            //int i = 0;
            //Using Christine Bittle In-class Example November 8,2019
            var db = new SCHOOLDB();
            List<Dictionary<String, String>> rs = db.List_Query("select * from students");
            foreach (Dictionary<String, String> row in rs)
            {
                string studentID = row["STUDENTID"];
                // Creating a DIV by g_mani on September 13,2013 https://forums.asp.net/t/1935334.aspx?creating+div+html+control+dynamically
                System.Web.UI.HtmlControls.HtmlGenericControl createDiv = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                //createDiv.ID = studentID;
                createDiv.Attributes["class"] = "listitem";

                string studentfirstname = row["STUDENTFNAME"];
                createDiv.InnerHtml += "<div>" + studentfirstname + "</div>";

                string studentlastname = row["STUDENTLNAME"];
                createDiv.InnerHtml += "<div>" + studentlastname + "</div>";

                string studentnumber = row["STUDENTNUMBER"];
                createDiv.InnerHtml += "<div>" + studentnumber + "</div>";

                string enrolmentdate = row["ENROLMENTDATE"];
                createDiv.InnerHtml += "<div>" + enrolmentdate + "</div>";
              
                Button BtnUpdate = new Button()
                {
                    Text = "Update",
                    ID = "Update/" + studentID,
                    CssClass = studentID
                };

                Button BtnDel = new Button()
                {
                    Text = "Delete",
                    CssClass = studentID,
                    ID = "Delete/" + studentID,
                    OnClientClick = " return ValidateDelete()",
                };

                //Faragta Learning 2017 https://faragta.com/asp.net-web-forms/dynamically-add-button-control-to-aspnet-page.html
                createDiv.Controls.Add(BtnUpdate);
                createDiv.Controls.Add(BtnDel);

                students_result.Controls.Add(createDiv);

                BtnUpdate.Click += new EventHandler(UpdateData);
                BtnDel.Click += new EventHandler(DeleteData);
                //i++; For Debugging purposes only

            }

        }

        //private Button GetButton(string id, string name, string Event)
        //{
        //    Button b = new Button();
        //    b.Text = name;
        //    b.Click += new EventHandler(Event);
        //    b.OnClientClick = "sa";
        //    return b;
        //}

        //void Button_Click(object sender, EventArgs e)
        //{

        //}
        void DeleteData(object sender, EventArgs e)
        {

            //Debug.WriteLine("ItworksDELETE");
            Button button = (Button)sender;
            //James in July 2,2013 https://stackoverflow.com/questions/17421375/how-to-get-numbers-from-a-string-and-store-it-in-a-variable-in-c-sharp
            string[] numButtonID = button.ID.Split('/');
            //string buttonId = button.CssClass;       
            var query = "DELETE FROM students WHERE STUDENTID =" + numButtonID[1];
            var db = new SCHOOLDB();
            List<Dictionary<String, String>> rs = db.List_Query(query);
            //Debug.WriteLine(query);
            students_result.InnerHtml = "<div class=\"listitem\"><div>FIRST NAME</div><div>LAST NAME</div><div>STUDENT NUMBER</div><div>ENROLMENT DATE</div></div>";
            DisplayData();
            //Debug.WriteLine(buttonId);
            //Debug.WriteLine("End of Delete");

        }

        void UpdateData(object sender, EventArgs e)
        {
            string studentfirstname = "";
            string studentlastname = "";
            string studentnumber = "";
            string enrolmentdate = "";

            //Getting values for the button that was click
            Button button1 = (Button)sender;

            //string buttonId1 = button1.ID;
            string[] numButtonID = button1.ID.Split('/');
            //buttonID = "Update/+studentID"
            //numButtonID will split into numButtonID[0] and numbButtonID[1]
            //numButtonID[0] = "Update", numbButtonID[1] = studentID;
            var query = "select * from students WHERE STUDENTID =" + numButtonID[1];
            var dbx = new SCHOOLDB();
            List<Dictionary<String, String>> rs = dbx.List_Query(query);
            foreach (Dictionary<String, String> row in rs)
            {
                studentfirstname = row["STUDENTFNAME"];
                studentlastname = row["STUDENTLNAME"];
                studentnumber = row["STUDENTNUMBER"];
                enrolmentdate = row["ENROLMENTDATE"];

            }

            student_fname = studentfirstname;
            student_lname = studentlastname;
            student_number = studentnumber;
            student_enrolment = enrolmentdate;
            student_ID = numButtonID[1];
            
            Debug.WriteLine(numButtonID[1]);

            //Server.Transfer("~/updateStudent.aspx");
            Response.Redirect("~/StudentUpdateForm.aspx");

            //updateStudent frm2 = new updateStudent();
            //frm2.Show();

        }

        void AddData(object sender, EventArgs e)
        {
            //Paul Grimshaw April 2012 in https://stackoverflow.com/questions/10180930/asp-net-open-new-webform-on-click-of-button
            Response.Redirect("~/StudentAddForm.aspx");
        }
    }
}