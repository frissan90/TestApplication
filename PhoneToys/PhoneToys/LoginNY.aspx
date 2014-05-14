<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="LoginNY.aspx.cs" Inherits="PhoneToys.LoginNY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row large-7 large-offset-5 columns medium-7 medium-offset-5" aria-haspopup="True">
        <div class="panel">
            <asp:Label CssClass="texting" runat="server" ID="Login" Text="Användarnamn"></asp:Label>
            <asp:TextBox ID="userTB" CssClass="textbox" runat="server"></asp:TextBox>

            <asp:Label CssClass="texting" runat="server" ID="Label1" Text="Lösenord"></asp:Label>
            <asp:TextBox ID="passwordTB" TextMode="Password" CssClass="textbox" runat="server"></asp:TextBox>

           <asp:ImageButton ID="LoginBtn" runat="server" imageUrl="~/Images/Login.png" Borderwidth="0" OnClick="LoginBtn_Click"/>
            
            <a href="#openModal">Glömt Lösen??</a>
        </div>

    </div>
    <div id="openModal" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<div class="row">
            <asp:Label Text="Email" runat="server"></asp:Label>
            <asp:TextBox runat="server" ID="FEmailTB"></asp:TextBox>
            <asp:Label Text="Användarnamn" runat="server"></asp:Label>
            <asp:TextBox runat="server" ID="FAnameTB"></asp:TextBox>
            <asp:Button runat="server" ID="FBTN" OnClick="FBTN_Click" Text="Skicka" />
            </div>
        </div>
        </div>
</asp:Content>
