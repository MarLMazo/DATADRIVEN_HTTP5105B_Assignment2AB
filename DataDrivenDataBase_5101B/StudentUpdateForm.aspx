<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="StudentUpdateForm.aspx.cs" Inherits="DataDrivenDataBase_5101B.StudentUpdateForm" %>


<asp:Content ID="Student_Update" ContentPlaceHolderID="StudentUpdate" runat="server">

    <h1>Update Student</h1>
    <div id="updateForm" class="_table" runat="server">
        <div class="listitem">
            
            
            <label>Please Enter Student First Name</label>
            <asp:TextBox runat="server" ID="student_fname"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="student_fname" ErrorMessage="Please enter student's first name"></asp:RequiredFieldValidator>
            
            <%-- %><asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="student_fname" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ErrorMessage="Please enter a valid first name">--%>
            <%--firstname validation reference- http://www.java2s.com/Tutorial/ASP.NET/0160__Validation/ValidateName.htm--%>

            
            
            <label>Please Enter Student Last Name</label>
            <asp:TextBox runat="server" ID="student_lname"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="student_lname" ErrorMessage="Please enter student's last name"></asp:RequiredFieldValidator>
                
            <%--<asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="student_lname" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ErrorMessage="Please enter a valid last name">--%>
            <%--lastname validation reference- http://www.java2s.com/Tutorial/ASP.NET/0160__Validation/ValidateName.htm--%>

            
                
            <label>Please Enter Student Number:</label>
            <asp:TextBox runat="server" ID="student_number"></asp:TextBox>
            
            <%--<asp:RegularExpressionValidator runat="server" EnableClientScrip="true" ControlToValidate="student_number" ValidationExpression="^[a-zA-Z0-9]+$" ErrorMessage="Enter a valid student number">--%>
            <%--student number validator which only allows alpha numeric value, not the signs http://regexlib.com/REDetails.aspx?regexp_id=1014&AspxAutoDetectCookieSupport=1--%>

            
            <label>Please Enter Student Enrolment date</label>
            <asp:TextBox runat="server" ID="student_enrolment"></asp:TextBox>  
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="student_enrolment" ErrorMessage="Please enter enrolment date"></asp:RequiredFieldValidator>
                
            <%--<asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="student_enrolment" ValidationExpression="^\d{4}\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$" ErrorMessage="Enter a valid enrolment date">-- %>
            <%-- student-enrolment date with format yyyy-mm-dd https://stackoverflow.com/questions/22061723/regex-date-validation-for-yyyy-mm-dd--%>
           
                    
            <%-- <asp:Button id="Button1" Text="Submit"  OnClick="SubmitBtn_Click"  runat="server"/>--%>
            <%-- This Gives me Error, why Am i Getting error for this one? --%>
        </div>    
    </div>

</asp:Content>
