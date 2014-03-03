<%@ Page Title="" Language="C#" MasterPageFile="~/Phonetoys.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PhonetoysWeb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="topContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<%--    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>--%>
    <div class="row" style="  margin-left:auto; margin-right:auto;">
    <div class="columns large-4 medium-4 small-4" style="float:left";>
        <asp:Label CssClass="label" runat="server" Text="Epost" ForeColor="Navy"></asp:Label><asp:RequiredFieldValidator ID="fv1" runat="server" ControlToValidate="EmailTB" ValidationGroup="register" ErrorMessage="Epost krävs" ForeColor="Red">*</asp:RequiredFieldValidator>

        <asp:TextBox CssClass="large-3 medium-3 small-3"  ID="EmailTB" runat="server"></asp:TextBox>
<%--       <ajaxToolkit:TextBoxWatermarkExtender ID="w1" runat="server" WatermarkText="E-mail adress" TargetControlID="EmailTB"></ajaxToolkit:TextBoxWatermarkExtender>--%>
        <br />
        <asp:Label CssClass="label" runat="server" Text="Lösenord" ForeColor="Navy"></asp:Label><asp:RequiredFieldValidator ID="fv2" runat="server" ControlToValidate="PWTB" ValidationGroup="register" ErrorMessage="Lösenord krävs" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="PWTB" runat="server" TextMode="Password"></asp:TextBox>
        
        <asp:Label CssClass="label"  runat="server" Text="Upprepa lösenord" ForeColor="Navy"></asp:Label><asp:RequiredFieldValidator ID="fv3" runat="server" ControlToValidate="ConfPWTB" ValidationGroup="register" ErrorMessage="Vänligen upprepa lösenordet" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="ConfPWTB" runat="server" TextMode="Password"></asp:TextBox>
        
        <asp:Label CssClass="label" runat="server" Text="Förnamn" ForeColor="Navy"></asp:Label><asp:RequiredFieldValidator ID="fv4" runat="server" ControlToValidate="FnameTB" ValidationGroup="register" ErrorMessage="Förnamn krävs" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="FnameTB" runat="server"></asp:TextBox>
<%--        <ajaxToolkit:TextBoxWatermarkExtender ID="w2" runat="server" WatermarkText="Förnamn" TargetControlID="FNameTB"></ajaxToolkit:TextBoxWatermarkExtender>--%>
        
        <asp:Label CssClass="label" runat="server" Text="Efternamn" ForeColor="Navy"></asp:Label><asp:RequiredFieldValidator ID="fv5" runat="server" ControlToValidate="LnameTB" ValidationGroup="register" ErrorMessage="Efternamn krävs" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="LnameTB" runat="server"></asp:TextBox>
<%--        <ajaxToolkit:TextBoxWatermarkExtender ID="w3" runat="server" WatermarkText="Efternamn" TargetControlID="LNameTB"></ajaxToolkit:TextBoxWatermarkExtender>--%>
    </div>
    
    <div class="columns large-4 medium-4 small-4" style="float:left; margin-left:50px;">
        <asp:Label CssClass="label" runat="server" Text="Adress" ForeColor="Navy"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AddressTB" ValidationGroup="register" ErrorMessage="Adress krävs" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="AddressTB" runat="server"></asp:TextBox>
<%--        <ajaxToolkit:TextBoxWatermarkExtender ID="w4" runat="server" WatermarkText="Adress" TargetControlID="AddressTB"></ajaxToolkit:TextBoxWatermarkExtender>--%>
        
        <asp:Label CssClass="label" runat="server" Text="Postnummer" ForeColor="Navy"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ZipTB" ValidationGroup="register" ErrorMessage="Postnummer krävs" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="ZipTB" runat="server"></asp:TextBox>
<%--        <ajaxToolkit:TextBoxWatermarkExtender ID="w5" runat="server" WatermarkText="Postnummer" TargetControlID="ZipTB"></ajaxToolkit:TextBoxWatermarkExtender>--%>
        
        <asp:Label CssClass="label" runat="server" Text="Stad" ForeColor="Navy"></asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="register" ControlToValidate="CityTB" ErrorMessage="Stad krävs" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="CityTB" runat="server"></asp:TextBox>
<%--        <ajaxToolkit:TextBoxWatermarkExtender ID="w6" runat="server" WatermarkText="Stad" TargetControlID="CityTB"></ajaxToolkit:TextBoxWatermarkExtender>--%>
        <asp:Label CssClass="label" runat="server" Text="Land" ForeColor="Navy"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="register" ControlToValidate="CountryDD" ErrorMessage="Vänligen välj land" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:DropDownList CssClass="large-5 medium-4 small-3" runat="server" ID="countryDD"></asp:DropDownList>
        <%--<div class="button radius large-10 medium-8 small-6" id>Register</div>--%>
<%--        <asp:Button runat="server" CssClass="button radius large-10 medium-8 small-6" ID="registerBTN" Text="Register" OnClick="registerBTN_Click" ValidationGroup="register" />--%>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="register" />
            <asp:Button runat="server" CssClass="button radius large-10 medium-8 small-6" ID="Button1" Text="Register" OnClick="registerBTN_Click" ValidationGroup="register" />

    </div>
    </div>

</asp:Content>
