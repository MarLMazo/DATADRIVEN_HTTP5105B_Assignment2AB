<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="StudentList.aspx.cs" Inherits="DataDrivenDataBase_5101B.StudentList" %>

<asp:Content ID="Student_List" ContentPlaceHolderID="StudentList" runat="server">
    <h1>Students</h1>

    <div id="students_result" class="_table" runat="server">
        <div class="listitem">
            <div>FIRST NAME</div>
            <div>LAST NAME</div>
            <div>STUDENT NUMBER</div>
            <div>ENROLMENT DATE</div>
        </div>
       
    </div>

    <script>
        function ValidateDelete() {
            var confirmUser = confirm("Are you sure you want to delete?");

            if (confirmUser === false)
            {
                return false;
                console.log(confirmUser);
            }
                //console.log(confirmUser+"312");
        }
      
    </script>


</asp:Content>
