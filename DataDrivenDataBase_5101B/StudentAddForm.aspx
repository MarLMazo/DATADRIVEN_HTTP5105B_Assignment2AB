<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="StudentAddForm.aspx.cs" Inherits="DataDrivenDataBase_5101B.StudentAddForm" %>

<asp:Content ID="Student_Add" ContentPlaceHolderID="StudentAdd" runat="server">
    <h1>Add Student</h1>
    <div id="addForm" class="addlistitem" runat="server">
         <div>
            <label>Please Enter Student First Name</label>
            <asp:TextBox runat="server" ID="student_fname"></asp:TextBox>
            <asp:RegularExpressionValidator ForeColor="Red" runat="server" ControlToValidate="student_fname" ErrorMessage="Enter a Valid First Name!" ValidationExpression="^[a-zA-Z]+[ ]?[a-zA-Z]+$"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="student_fname" ErrorMessage="Please enter student's first name"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label>Please Enter Student Last Name</label>
            <asp:TextBox runat="server" ID="student_lname"></asp:TextBox>
            <asp:RegularExpressionValidator ForeColor="Red" runat="server" ControlToValidate="student_lname" ErrorMessage="Enter a Valid Last Name!" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="student_lname" ErrorMessage="Please enter student's last name"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label>Please Enter Student Number:</label>
            <asp:TextBox runat="server" ID="student_number"></asp:TextBox>
            <asp:RegularExpressionValidator ForeColor="Red" runat="server" ControlToValidate="student_number" ErrorMessage="Enter a Valid Student Number!" ValidationExpression="^[N|n][0-9]{4}$"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="student_number" ErrorMessage="Please enter student's number"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label>Please Enter Student Enrolment date</label>
            <asp:TextBox runat="server" ID="student_enrolment"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" ForeColor="Red" EnableClientScript="true" ControlToValidate="student_enrolment" ValidationExpression="^\d{4}\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$" ErrorMessage="Enter a valid enrolment date"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="student_enrolment" ErrorMessage="" ></asp:RequiredFieldValidator>
            <%-- student-enrolment date with format yyyy-mm-dd https://stackoverflow.com/questions/22061723/regex-date-validation-for-yyyy-mm-dd--%>
        </div>  
    </div>

</asp:Content>
