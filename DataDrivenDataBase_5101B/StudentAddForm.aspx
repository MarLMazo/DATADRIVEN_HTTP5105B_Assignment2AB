<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="StudentAddForm.aspx.cs" Inherits="DataDrivenDataBase_5101B.StudentAddForm" %>

<asp:Content ID="Student_Add" ContentPlaceHolderID="StudentAdd" runat="server">
    <h1>Add Student</h1>
    <div id="addForm" class="_table" runat="server">
        <div class="listitem">
            <label>Please Enter Student First Name</label>
            <asp:TextBox runat="server" ID="student_fname"></asp:TextBox>
            <label>Please Enter Student Last Name</label>
            <asp:TextBox runat="server" ID="student_lname"></asp:TextBox>
            <label>Please Enter Student Number:</label>
            <asp:TextBox runat="server" ID="student_number"></asp:TextBox>
            <label>Please Enter Student Enrolment date</label>
            <asp:TextBox runat="server" ID="student_enrolment"></asp:TextBox>         
        </div>    
    </div>

</asp:Content>
