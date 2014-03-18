<%@ Page Title="" Language="C#" MasterPageFile="~/Phonetoys2.Master" AutoEventWireup="true" CodeBehind="MemberLogin.aspx.cs" Inherits="PhoneToys.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row row-content large-6">
        <div class="large-6 medium-7 small-12">
            <asp:Label runat="server" Text="Användarnamn" AssociatedControlID="UnameTB" ForeColor="Black"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UnameTB" ValidationGroup="memberLogIn" ErrorMessage="Fyll i Användarnamn">
                <asp:Label ID="Label1" runat="server" ForeColor="Red">*</asp:Label></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UnameTB" ValidationGroup="adminLogIn" ValidationExpression="^[a-zA-Z0-9]+" ErrorMessage="Fältet innehåller ogiltiga tecken">
                    <asp:Label ID="Label2" runat="server" ForeColor="Red">*</asp:Label></asp:RegularExpressionValidator>
                <asp:TextBox runat="server" ID="UnameTB"></asp:TextBox>
            
        </div>
        <div class="large-6 medium-7 small-12">
            <asp:Label runat="server" Text="Lösenord" AssociatedControlID="PWTB" ForeColor="Black"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PWTB" ValidationGroup="memberLogIn" ErrorMessage="Fyll i Lösenord" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:TextBox runat="server" ID="PWTB" TextMode="Password"></asp:TextBox>
            <asp:Button CssClass="button radius" ID="LogInBTN" runat="server" Text="Logga in" OnClick="LogInBTN_Click" ValidationGroup="memberLogIn" />
            <asp:ValidationSummary runat="server" ValidationGroup="memberLogIn" ForeColor="Red" />
        </div>
    </div>
</asp:Content>
