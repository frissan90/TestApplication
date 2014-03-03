<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="PhoneToys.Admin" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <asp:TextBox runat="server" ID="AdminLoginEmailTB" Text="Skriv in E-mail"></asp:TextBox>
    <asp:TextBox runat="server" ID="AdminLoginPWTB" TextMode="Password"></asp:TextBox>
    <asp:Button runat="server" ID="AdminLoginBtn" CssClass="button radius large-10 medium-8 small-6" Text="Logga in som admin" />   

    </div>
    </form>
</body>
</html>

