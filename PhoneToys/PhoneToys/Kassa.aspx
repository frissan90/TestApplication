<%@ Page Title="" Language="C#" MasterPageFile="~/PhonetoysFinal.Master" AutoEventWireup="true" CodeBehind="Kassa.aspx.cs" Inherits="PhoneToys.Kassa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <asp:Button runat="server" CssClass="button radius" ID="CheckOutBTN" Text="Bekräfta köp" OnClick="CheckOutBTN_Click" />
    </div>
</asp:Content>
