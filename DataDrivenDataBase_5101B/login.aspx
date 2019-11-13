<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DataDrivenDataBase_5101B.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div id="display" runat="server"></div>
    <form id="loginform" runat="server">
        
        <div>
            <label for="username">USERNAME:</label>
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="password">PASSWORD:</label>
            <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox>
        </div>

        <button type="submit" runat="server">LOGIN</button>
    </form>
</body>
</html>
