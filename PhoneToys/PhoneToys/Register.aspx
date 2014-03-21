<%@ Page Title="" Language="C#" MasterPageFile="~/Phonetoys2.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PhonetoysWeb.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link rel="stylesheet" href="Content/foundation.css" media="screen" />
    <link rel="stylesheet" href="Content/PhonetoysCSS.css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <hr />
        <div class="row">
            
            <div class=" large-4 medium-4 columns">
                <asp:Label ID="Label10" CssClass="label" runat="server" Text="Användarnamn"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="UnameTB" ValidationGroup="register" ErrorMessage="1) Användarnamn krävs" ForeColor="Red">1</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UnameTB" ValidationGroup="register" ValidationExpression="^[a-öA-Ö0-9]+" ErrorMessage="1) Fältet innehåller ogiltiga tecken" ForeColor="Red">1</asp:RegularExpressionValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="UnameTB" ValidationGroup="register" ValidationExpression="^[a-öA-Ö0-9\s]{6,16}$" ErrorMessage="1) Användarnamn måste vara mellan 6 och 16 tecken" ForeColor="Red">1</asp:RegularExpressionValidator>
                <asp:TextBox ID="UnameTB" placeholder="Användarnamn" runat="server"></asp:TextBox>
            </div>

            <div class=" large-4 medium-4 columns">
                <asp:Label ID="Label1" CssClass="label" runat="server" Text="Epost"></asp:Label><asp:RequiredFieldValidator ID="fv1" runat="server" ControlToValidate="EmailTB" ValidationGroup="register" ErrorMessage="2) Epost krävs" ForeColor="Red">2</asp:RequiredFieldValidator><asp:RegularExpressionValidator ValidationGroup="register" ID="emailRegEx" runat="server" ControlToValidate="EmailTB" ErrorMessage="2) Felaktig Epost" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">2</asp:RegularExpressionValidator>
                <asp:TextBox ID="EmailTB" placeholder="example@example.com" runat="server"></asp:TextBox>
            </div>

            <div class=" large-4 medium-4 columns">
                <asp:Label ID="Label2" CssClass="label" runat="server" Text="Lösenord"></asp:Label><asp:RequiredFieldValidator ID="fv2" runat="server" ControlToValidate="PWTB" ValidationGroup="register" ErrorMessage="3) Lösenord krävs" ForeColor="Red">3</asp:RequiredFieldValidator><%--<asp:RegularExpressionValidator runat="server" ControlToValidate="PWTB" ErrorMessage="3) Lösen måste vara mellan 8 och 16 tecken" ValidationGroup="register" ValidationExpression="^.*(?=.{6,})(?=.*[a-z])(?=.*[A-Z])(?=.*[\d\W]).*$" ForeColor="Red">3)</asp:RegularExpressionValidator>--%><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="PWTB" ErrorMessage="3) Lösen måste vara minst 6 tecken" ValidationGroup="register" ValidationExpression="^.*(?=.{6,}).*$" ForeColor="Red">3</asp:RegularExpressionValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="PWTB" ErrorMessage="3) Lösen måste ha minst en gemen" ValidationGroup="register" ValidationExpression="^.*(?=.*[a-z]).*$" ForeColor="Red"> 3</asp:RegularExpressionValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="PWTB" ErrorMessage="3) Lösen måste ha minst en versal" ValidationGroup="register" ValidationExpression="^.*(?=.*[A-Z]).*$" ForeColor="Red"> 3</asp:RegularExpressionValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="PWTB" ErrorMessage="3) Lösen måste ha minst en siffra" ValidationGroup="register" ValidationExpression="^.*(?=.*[\d]).*$" ForeColor="Red"> 3</asp:RegularExpressionValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="PWTB" ErrorMessage="3) Lösen måste ha minst ett specialtecken" ValidationGroup="register" ValidationExpression="^.*(?=.*[\W]).*$" ForeColor="Red"> 3</asp:RegularExpressionValidator>
                <asp:TextBox ID="PWTB" runat="server" placeholder="Lösenord" TextMode="Password"></asp:TextBox>
            </div>

            </div>

        <div class="row">
            <div class=" large-4 medium-4 columns">
                <asp:Label ID="Label3" CssClass="label" runat="server" Text="Upprepa lösenord"></asp:Label><asp:RequiredFieldValidator ID="fv3" runat="server" ControlToValidate="ConfPWTB" ValidationGroup="register" ErrorMessage="4) Vänligen upprepa lösenordet" ForeColor="Red">4</asp:RequiredFieldValidator><asp:CompareValidator runat="server" ControlToCompare="PWTB" ControlToValidate="ConfPWTB" ErrorMessage="4) Lösenorden är inte lika" ValidationGroup="register">4</asp:CompareValidator>
                <asp:TextBox ID="ConfPWTB" runat="server" placeholder="Upprepa lösenord" TextMode="Password"></asp:TextBox>
            </div>
            <div class=" large-4 medium-4 columns">
                <asp:Label ID="Label4" CssClass="label" runat="server" Text="Förnamn"></asp:Label><asp:RequiredFieldValidator ID="fv4" runat="server" ControlToValidate="FnameTB" ValidationGroup="register" ErrorMessage="5) Förnamn krävs" ForeColor="Red">5</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="FnameTB" ValidationGroup="register" ValidationExpression="^[a-öA-Ö]{1,20}$" ErrorMessage="5) Endast bokstäver är tillåtna" ForeColor="Red">5</asp:RegularExpressionValidator>
                <asp:TextBox ID="FnameTB" placeholder="Förnamn" runat="server"></asp:TextBox>
            </div>
            <div class=" large-4 medium-4 columns">
                <asp:Label ID="Label5" CssClass="label" runat="server" Text="Efternamn"></asp:Label><asp:RequiredFieldValidator ID="fv5" runat="server" ControlToValidate="LnameTB" ValidationGroup="register" ErrorMessage="6) Efternamn krävs" ForeColor="Red">6</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="LnameTB" ValidationGroup="register" ValidationExpression="^[a-öA-Ö]{1,20}$" ErrorMessage="6) Endast bokstäver är tillåtna" ForeColor="Red">6</asp:RegularExpressionValidator>
                <asp:TextBox ID="LnameTB" placeholder="Efternamn" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class=" large-4 medium-4 columns">
                <asp:Label ID="Label6" CssClass="label" runat="server" Text="Adress"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AddressTB" ValidationGroup="register" ErrorMessage="7) Adress krävs" ForeColor="Red">7</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="AddressTB" ValidationGroup="register" ValidationExpression="^[a-öA-Ö]{1,20}$" ErrorMessage="7) Endast bokstäver är tillåtna" ForeColor="Red">7</asp:RegularExpressionValidator>
                <asp:TextBox ID="AddressTB" placeholder="Adress" runat="server"></asp:TextBox>
            </div>
            <div class=" large-4 medium-4 columns">
                <asp:Label ID="Label7" CssClass="label" runat="server" Text="Postnummer"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ZipTB" ValidationGroup="register" ErrorMessage="8) Postnummer krävs" ForeColor="Red">8</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="FnameTB" ValidationGroup="register" ValidationExpression="^[a-öA-Ö]{1,20}$" ErrorMessage=") Endast bokstäver är tillåtna" ForeColor="Red">8</asp:RegularExpressionValidator>
                <asp:TextBox ID="ZipTB" placeholder="Postnummer" runat="server"></asp:TextBox>
            </div>

            <div class=" large-4 medium-4 columns">
                <asp:Label ID="Label8" CssClass="label" runat="server" Text="Stad"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="register" ControlToValidate="CityTB" ErrorMessage="9) Stad krävs">9</asp:RequiredFieldValidator>
                <asp:TextBox placeholder="Stad" ID="CityTB" runat="server"></asp:TextBox>
            </div>

            <div class="row right">
            <div class=" large-5 medium-5 columns">
                <asp:Label ID="Label9" CssClass="label" runat="server" Text="Land" ForeColor="Navy"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="register" ControlToValidate="CountryDD" ErrorMessage="10) Vänligen välj land" ForeColor="Red">10</asp:RequiredFieldValidator>
                <%--<br />--%>
                <asp:DropDownList runat="server" ID="countryDD"></asp:DropDownList>
                <asp:ValidationSummary DisplayMode="List" ID="ValidationSummary1" runat="server" ValidationGroup="register" />
                <asp:Button runat="server" CssClass="button radius large-5 medium-5 small-4" ID="registerBTN" Text="Register" ValidationGroup="register" OnClick="registerBTN_Click" />
            </div>
                </div>
        </div>
    </div>

    <%--<div class="row">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="register" />
            <asp:Button runat="server" CssClass="button radius large-4 medium-3 small-3" ID="Button1" Text="Register" ValidationGroup="register" />
        </div>--%>
    <%-- </div>
    </div>--%>
</asp:Content>
