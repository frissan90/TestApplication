<%@ Page Title="" Language="C#" MasterPageFile="~/Phonetoys2.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="PhoneToys.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row row-content">
        <div class="large-6 medium-7 small-12">
            <asp:Label ID="LabelA1" runat="server" Text="Användarnamn" AssociatedControlID="UnameTB" ForeColor="Black"></asp:Label>
            <asp:TextBox runat="server" ID="UnameTB"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="UnameTB" ValidationGroup="adminLogIn" ErrorMessage="Fyll i Användarnamn" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="UnameTB" ValidationGroup="adminLogIn" ValidationExpression="^[a-zA-Z0-9]+" ErrorMessage="Fältet innehåller ogiltiga tecken" ForeColor="Red">*</asp:RegularExpressionValidator>

            <asp:Label ID="LabelA2" runat="server" Text="Lösenord" AssociatedControlID="PWTB" ForeColor="Black"></asp:Label>
            <asp:TextBox runat="server" ID="PWTB" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="PWTB" ValidationGroup="adminLogIn" ErrorMessage="Fyll i Lösenord" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Button CssClass="button radius" ID="LogInABTN" runat="server" Text="Logga in" OnClick="LogInABTN_Click" ValidationGroup="adminLogIn" />
            <asp:ValidationSummary runat="server" ValidationGroup="adminLogIn" />
        </div>
    </div>

</asp:Content>
