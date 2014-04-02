<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="LoginNY.aspx.cs" Inherits="PhoneToys.LoginNY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row large-7 columns medium-7">
        <div class="panel">
            <asp:Label runat="server" ID="Login" Text="Användarnamn"></asp:Label>
            <asp:TextBox ID="userTB" runat="server"></asp:TextBox>

            <asp:Label runat="server" ID="Label1" Text="Lösenord"></asp:Label>
            <asp:TextBox ID="passwordTB" runat="server"></asp:TextBox>

           <asp:ImageButton ID="LoginBtn" runat="server" imageUrl="Images/Login.png" Borderwidth="0" OnClick="LoginBtn_Click"/>

        </div>

    </div>
</asp:Content>
