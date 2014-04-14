<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="Spelasaga.aspx.cs" Inherits="PhoneToys.Spelasaga" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="panelW">
        <h3>Bamse och Sjörövarjulen</h3>
        <img src="Images/bamse.jpg" />
        <br />
        <audio controls="controls">
        </audio>
        <br />
        <asp:Button runat="server" ID="spelaBTN" OnClick="spelaBTN_Click" CssClass="link" Text="Spela"/>
    </div>
        </div>
</asp:Content>
