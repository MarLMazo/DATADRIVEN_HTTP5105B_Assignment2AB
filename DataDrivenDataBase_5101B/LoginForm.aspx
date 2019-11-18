<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="DataDrivenDataBase_5101B.LoginForm" %>
<asp:Content ID="Login_Form" ContentPlaceHolderID="LoginForm" runat="server">
    
    <h1>Log In Your Account</h1>
    <div id="display" runat="server"></div>   
    <div>
        <label for="username">USERNAME:</label>
        <asp:TextBox ID="username" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="username" ErrorMessage="Username field empty" ForeColor="IndianRed"></asp:RequiredFieldValidator>
    </div>
    <div>
        <label for="password">PASSWORD:</label>
        <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="password" ErrorMessage="Username field empty" ForeColor="IndianRed"></asp:RequiredFieldValidator>
    </div>

    <button type="submit" runat="server">LOGIN</button>




</asp:Content>

