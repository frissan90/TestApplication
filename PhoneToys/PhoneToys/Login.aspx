<%@ Page Title="" Language="C#" MasterPageFile="~/Phonetoys.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PhoneToys.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="topContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox runat="server" ID="loginEmailTB"></asp:TextBox>
    <asp:TextBox runat="server" ID="loginPWTB"></asp:TextBox>
    <asp:Button runat="server" ID="loginBTN" CssClass="button radius large-10 medium-8 small-6" OnClick="loginBTN_Click" />
</asp:Content>
