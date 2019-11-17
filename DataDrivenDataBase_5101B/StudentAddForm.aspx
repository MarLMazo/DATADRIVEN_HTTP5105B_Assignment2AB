<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="StudentAddForm.aspx.cs" Inherits="DataDrivenDataBase_5101B.StudentAddForm" %>

<asp:Content ID="Student_Add" ContentPlaceHolderID="StudentAdd" runat="server">
    <h1>Add Student</h1>
    <div id="addForm" class="addlistitem" runat="server">
         <div>
            <label>Please Enter Student First Name</label>
            <asp:TextBox runat="server" ID="student_fname" placeholder="ex. George"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="student_fname" ErrorMessage="Please enter student's first name"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="student_fname" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ErrorMessage="Please enter a valid first name"/>
           <%--firstname validation reference- http://www.java2s.com/Tutorial/ASP.NET/0160__Validation/ValidateName.htm--%>        
        </div>
        <div>
            <label>Please Enter Student Last Name</label>
            <asp:TextBox runat="server" ID="student_lname" placeholder="ex. George"></asp:TextBox>          
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="student_lname" ErrorMessage="Please enter student's last name"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="student_fname" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ErrorMessage="Please enter a valid first name"/>
        </div>
        <div>
            <label>Please Enter Student Number:</label>
            <asp:TextBox runat="server" ID="student_number" placeholder="ex. N1111"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="student_number" ErrorMessage="Please enter student's number"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ForeColor="Red" runat="server" ControlToValidate="student_number" ErrorMessage="Enter a Valid Student Number!" ValidationExpression="^[N|n][0-9]{4}$"></asp:RegularExpressionValidator>          
        </div>
        <div>
            <label>Please Enter Student Enrolment date</label>
            <asp:TextBox runat="server" ID="student_enrolment" placeholder="yyyy-mm-dd"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" ForeColor="Red" EnableClientScript="true" ControlToValidate="student_enrolment" ValidationExpression="^\d{4}\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$" ErrorMessage="Enter a valid enrolment date"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="student_enrolment" ErrorMessage="" ></asp:RequiredFieldValidator>
            <%-- student-enrolment date with format yyyy-mm-dd by Vinod February 27, 2014 https://stackoverflow.com/questions/22061723/regex-date-validation-for-yyyy-mm-dd--%>
        </div>  
    </div>

</asp:Content>
