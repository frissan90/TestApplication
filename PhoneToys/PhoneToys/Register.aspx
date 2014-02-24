<%@ Page Title="" Language="C#" MasterPageFile="~/Phonetoys.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PhonetoysWeb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="topContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row" style=" border:1px solid tomato; margin-left:auto; margin-right:auto;">
    <div class="columns large-4 medium-4 small-4" style="float:left; border:1px solid black;">
        <asp:Label runat="server" Text="Email" ForeColor="Navy" style="border:solid;"></asp:Label>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="EmailTB" runat="server" Text="Insert Email" Style="width:300px;"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Password" ForeColor="Navy" style="border:solid;"></asp:Label>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="PWTB" runat="server" Text="Insert Password" Style="width:300px;" TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Confirm Password" ForeColor="Navy" style="border:solid;"></asp:Label>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="ConfPWTB" runat="server" Text="Repeat password" Style="width:300px;" TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="First Name" ForeColor="Navy" style="border:solid;"></asp:Label>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="FnameTB" runat="server" Text="Inserdt First Name" Style="width:300px;"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="Last Name" ForeColor="Navy" style="border:solid;"></asp:Label>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="LnameTB" runat="server" Text="Insert Last Name" Style="width:300px;"></asp:TextBox>
    </div>
    
    <div class="columns large-4 medium-4 small-4" style="float:left; border:1px solid black; margin-left:50px;">
        <asp:Label ID="Label5" runat="server" Text="Address" ForeColor="Navy" style="border:solid;"></asp:Label>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="AddressTB" runat="server" Text="Insert Address" Style="width:300px;"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text="Zip Code" ForeColor="Navy" style="border:solid;"></asp:Label>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="ZipTB" runat="server" Text="Insert Zip Code" Style="width:300px;"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Text="City" ForeColor="Navy" style="border:solid;"></asp:Label>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="CityTB" runat="server" Text="Insert City" Style="width:300px;"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Text="Country" ForeColor="Navy" style="border:solid;"></asp:Label>
        <asp:DropDownList CssClass="large-3 medium-3 small-3" runat="server" ID="countryDD"></asp:DropDownList>
        <%--<div class="button radius large-10 medium-8 small-6" id>Register</div>--%>
        <asp:Button runat="server" CssClass="button radius large-10 medium-8 small-6" ID="registerBTN" Text="Register" OnClick="registerBTN_Click" />
    </div>
        
    </div>

</asp:Content>
