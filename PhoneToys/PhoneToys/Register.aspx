<%@ Page Title="" Language="C#" MasterPageFile="~/Phonetoys.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PhonetoysWeb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="topContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<%--    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>--%>
    <div class="row" style="  margin-left:auto; margin-right:auto;">
    <div class="columns large-4 medium-4 small-4" style="float:left";>
        <asp:Label runat="server" Text="Email" ForeColor="Navy"></asp:Label>
        <asp:TextBox CssClass="large-3 medium-3 small-3"  ID="EmailTB" runat="server" Style="width:300px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="fv1" runat="server" ControlToValidate="EmailTB" ValidationGroup="register"></asp:RequiredFieldValidator>
<%--        <ajaxToolkit:TextBoxWatermarkExtender ID="w1" runat="server" WatermarkText="E-mail adress" TargetControlID="EmailTB"></ajaxToolkit:TextBoxWatermarkExtender>--%>
        <asp:Label ID="Label1" runat="server" Text="Password" ForeColor="Navy"></asp:Label>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="PWTB" runat="server" Style="width:300px;" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="fv2" runat="server" ControlToValidate="PWTB" ValidationGroup="register"></asp:RequiredFieldValidator>
        <asp:Label ID="Label2"  runat="server" Text="Confirm Password" ForeColor="Navy"></asp:Label>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="ConfPWTB" runat="server" Style="width:300px;" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="fv3" runat="server" ControlToValidate="ConfPWTB" ValidationGroup="register"></asp:RequiredFieldValidator>
        <asp:Label ID="Label3" runat="server" Text="First Name" ForeColor="Navy"></asp:Label>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="FnameTB" runat="server" Style="width:300px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="fv4" runat="server" ControlToValidate="FnameTB" ValidationGroup="register"></asp:RequiredFieldValidator>
<%--        <ajaxToolkit:TextBoxWatermarkExtender ID="w2" runat="server" WatermarkText="Förnamn" TargetControlID="FNameTB"></ajaxToolkit:TextBoxWatermarkExtender>--%>
        <asp:Label ID="Label4" runat="server" Text="Last Name" ForeColor="Navy"></asp:Label>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="LnameTB" runat="server" Style="width:300px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="fv5" runat="server" ControlToValidate="LnameTB" ValidationGroup="register">*</asp:RequiredFieldValidator>
<%--        <ajaxToolkit:TextBoxWatermarkExtender ID="w3" runat="server" WatermarkText="Efternamn" TargetControlID="LNameTB"></ajaxToolkit:TextBoxWatermarkExtender>--%>
    </div>
    
    <div class="columns large-4 medium-4 small-4" style="float:left; margin-left:50px;">
        <asp:Label ID="Label5" runat="server" Text="Address" ForeColor="Navy"></asp:Label>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="AddressTB" runat="server" Style="width:300px;"></asp:TextBox>
<%--        <ajaxToolkit:TextBoxWatermarkExtender ID="w4" runat="server" WatermarkText="Adress" TargetControlID="AddressTB"></ajaxToolkit:TextBoxWatermarkExtender>--%>
        <asp:Label ID="Label6" runat="server" Text="Zip Code" ForeColor="Navy"></asp:Label>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="ZipTB" runat="server" Style="width:300px;"></asp:TextBox>
<%--        <ajaxToolkit:TextBoxWatermarkExtender ID="w5" runat="server" WatermarkText="Postnummer" TargetControlID="ZipTB"></ajaxToolkit:TextBoxWatermarkExtender>--%>
        <asp:Label ID="Label7" runat="server" Text="City" ForeColor="Navy"></asp:Label>
        <asp:TextBox CssClass="large-3 medium-3 small-3" ID="CityTB" runat="server" Style="width:300px;"></asp:TextBox>
<%--        <ajaxToolkit:TextBoxWatermarkExtender ID="w6" runat="server" WatermarkText="Stad" TargetControlID="CityTB"></ajaxToolkit:TextBoxWatermarkExtender>--%>
        <asp:Label ID="Label8" runat="server" Text="Country" ForeColor="Navy"></asp:Label>
        <asp:DropDownList CssClass="large-3 medium-3 small-3" runat="server" ID="countryDD"></asp:DropDownList>
        <%--<div class="button radius large-10 medium-8 small-6" id>Register</div>--%>
<%--        <asp:Button runat="server" CssClass="button radius large-10 medium-8 small-6" ID="registerBTN" Text="Register" OnClick="registerBTN_Click" ValidationGroup="register" />--%>
    </div>
          <asp:Button runat="server" CssClass="button radius large-10 medium-8 small-6" ID="Button1" Text="Register" OnClick="registerBTN_Click" ValidationGroup="register" />
    </div>

</asp:Content>
