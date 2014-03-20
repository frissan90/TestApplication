﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Phonetoys2.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="PhoneToys.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="row-content large-12">
            <div class="row large-3">
                <div class="large-4 columns small-4">
                    <img src="Images/Bamse2.jpeg" />
                </div>

            </div>
        </div>

        <div class="row">
            <div class="large-4 medium-9 small-12 columns">
                <asp:Label CssClass="label" ID="LabelA1" runat="server" Text="Användarnamn" AssociatedControlID="UnameTB" ForeColor="Black"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UnameTB" ValidationGroup="adminLogIn" ErrorMessage="Fyll i Användarnamn">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red">*</asp:Label>
                </asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UnameTB" ValidationGroup="adminLogIn" ValidationExpression="^[a-zA-Z0-9]+" ErrorMessage="Fältet innehåller ogiltiga tecken">
                    <asp:Label ID="Label2" runat="server" ForeColor="Red">*</asp:Label>
                </asp:RegularExpressionValidator>
                <asp:TextBox runat="server" ID="UnameTB"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="large-4 medium-9 small-12 columns">
                <asp:Label CssClass="label" ID="LabelA2" runat="server" Text="Lösenord" AssociatedControlID="PWTB" ForeColor="Black"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PWTB" ValidationGroup="adminLogIn" ErrorMessage="Fyll i Lösenord" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="PWTB" runat="server" TextMode="Password" placeholder="Lösenord"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <asp:Button CssClass="button radius" ID="LogInABTN" runat="server" Text="Logga in" OnClick="LogInABTN_Click" ValidationGroup="adminLogIn" />
            <asp:ValidationSummary runat="server" ValidationGroup="adminLogIn" ForeColor="Red" />
        </div>
    </div>

</asp:Content>
