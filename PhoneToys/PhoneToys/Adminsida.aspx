<%@ Page Title="" Language="C#" MasterPageFile="~/AdminFinal.Master" AutoEventWireup="true" CodeBehind="Adminsida.aspx.cs" Inherits="PhoneToys.Adminsida" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row collapse large-offset-4 medium-offset-4 small-offset-3">
        <br />
<asp:Label runat="server" ID="labeltitle" CssClass="labeladmin">Registrera redaktörsanvändare</asp:Label>

    </div>
    <div class="row-content large-offset-4 medium-offset-4">

        <div class="row-content large-6">

            <div class="large-6 medium-6 small-12">
                <asp:Label ID="LabelA10" CssClass="label PTLabels font1" runat="server" Text="Användarnamn"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="UnameATB" ValidationGroup="registerEditor" ErrorMessage="1) Användarnamn krävs" ForeColor="Red">1</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorA1" runat="server" ControlToValidate="UnameATB" ValidationGroup="registerEditor" ValidationExpression="^[a-öA-Ö0-9]+" ErrorMessage="1) Fältet innehåller ogiltiga tecken" ForeColor="Red">1</asp:RegularExpressionValidator>
                <asp:TextBox ID="UnameATB" placeholder="Användarnamn" runat="server" CssClass="textbox2"></asp:TextBox>

            </div>

            <div class=" large-6 medium-6 small-12">
                <asp:Label ID="LabelA1" CssClass="label PTLabels font1" runat="server" Text="Epost"></asp:Label>
                <asp:RequiredFieldValidator ID="fv1A" runat="server" ControlToValidate="EmailATB" ValidationGroup="registerEditor" ErrorMessage="2) Epost krävs" ForeColor="Red">2</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="EmailATB" ValidationGroup="registerEditor" ErrorMessage="1) Fältet innehåller ogiltiga tecken" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">1</asp:RegularExpressionValidator>
                <asp:TextBox ID="EmailATB" placeholder="E-post" runat="server" CssClass="textbox2"></asp:TextBox>
            </div>

            <div class=" large-6 medium-6 small-12">
                <asp:Label ID="LabelA2" CssClass="label PTLabels font1" runat="server" Text="Lösenord"></asp:Label><asp:RequiredFieldValidator ID="fv2A" runat="server" ControlToValidate="PWTBA" ValidationGroup="registerEditor" ErrorMessage="3) Lösenord krävs" ForeColor="Red">3</asp:RequiredFieldValidator>
                <asp:TextBox ID="PWTBA" runat="server" placeholder="Lösenord" TextMode="Password" CssClass="textbox2"></asp:TextBox>
            </div>
            <div class=" large-6 medium-6 small-12">
                <asp:Label ID="LabelA3" CssClass="label PTLabels font1" runat="server" Text="Upprepa lösenord"></asp:Label><asp:RequiredFieldValidator ID="fv3A" runat="server" ControlToValidate="ConfPWTBA" ValidationGroup="registerEditor" ErrorMessage="4) Vänligen upprepa lösenordet" ForeColor="Red">4</asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="PWTBA" ControlToValidate="ConfPWTBA" ErrorMessage="4) Lösenorden är inte lika" ValidationGroup="registerEditor" ForeColor="Red">4</asp:CompareValidator>
                <asp:TextBox ID="ConfPWTBA" placeholder="Upprepa lösenord" runat="server" TextMode="Password" CssClass="textbox2"></asp:TextBox>
            </div>
            <div class=" large-6 medium-6 small-12">
                <asp:Label ID="LabelA4" CssClass="label PTLabels font1" runat="server" Text="Förnamn"></asp:Label><asp:RequiredFieldValidator ID="fv4A" runat="server" ControlToValidate="FnameATB" ValidationGroup="registerEditor" ErrorMessage="5) Förnamn krävs" ForeColor="Red">5</asp:RequiredFieldValidator>
                <asp:TextBox ID="FnameATB" placeholder="Förnamn" runat="server" CssClass="textbox2"></asp:TextBox>
            </div>
            <div class=" large-6 medium-6 small-12">
                <asp:Label ID="LabelA5" CssClass="label PTLabels font1" runat="server" Text="Efternamn" ></asp:Label>
                <asp:RequiredFieldValidator ID="fv5A" runat="server" ControlToValidate="LnameATB" ValidationGroup="registerEditor" ErrorMessage="6) Efternamn krävs" ForeColor="Red">6</asp:RequiredFieldValidator>
                <asp:TextBox ID="LnameATB" runat="server" placeholder="Efternamn" CssClass="textbox2"></asp:TextBox>
            </div>

            <asp:ValidationSummary DisplayMode="List" ID="ValidationSummary1A" runat="server" ValidationGroup="registerEditor" />
            <asp:Button runat="server" CssClass="PTLabels button radius large-7 medium-4 small-7" ID="registerEditorBTN" Text="Registrera redaktör" ValidationGroup="registerEditor" Onclick="registerEditorBTN_Click" Style="background-color:red;color:yellow;border-radius:10px;" />

        </div>
    </div>
</asp:Content>
