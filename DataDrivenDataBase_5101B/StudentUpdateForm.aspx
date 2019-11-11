<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="StudentUpdateForm.aspx.cs" Inherits="DataDrivenDataBase_5101B.StudentUpdateForm" %>


<asp:Content ID="Student_Update" ContentPlaceHolderID="StudentUpdate" runat="server">

    <h1>Update Student</h1>
    <div id="updateForm" class="_table" runat="server">
        <div class="listitem">
            <label>Please Enter Student First Name</label>
            <asp:TextBox runat="server" ID="student_fname"></asp:TextBox>
            <label>Please Enter Student Last Name</label>
            <asp:TextBox runat="server" ID="student_lname"></asp:TextBox>
            <label>Please Enter Student Number:</label>
            <asp:TextBox runat="server" ID="student_number"></asp:TextBox>
            <label>Please Enter Student Enrolment date</label>
            <asp:TextBox runat="server" ID="student_enrolment"></asp:TextBox>  

           <%-- <asp:Button id="Button1" Text="Submit"  OnClick="SubmitBtn_Click"  runat="server"/>--%>
            <%-- This Gives me Error, why Am i Getting error for this one? --%>
        </div>    
    </div>

</asp:Content>
