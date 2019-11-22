<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="DataDrivenDataBase_5101B.StudentInfo" %>
<asp:Content ID="Student_Info" ContentPlaceHolderID="StudentInfo" runat="server">
    <h1>Student Information</h1>
    
    <div id="StudentDetails" runat="server">

    </div>

    <asp:Button runat="server" ID="logout_button" OnClick="LogOut" text="LOGOUT" />
    
</asp:Content>
