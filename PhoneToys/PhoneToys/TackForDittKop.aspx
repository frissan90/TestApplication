<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="TackForDittKop.aspx.cs" Inherits="PhoneToys.TackForDittKop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

     
        <div class="row"><asp:Label ID="Tack" runat="server" Text="Tack För Ditt Köp" CssClass="TackF"></asp:Label></div>
    <br />
    <div class)="row"> <asp:Label ID="Nyttköp" runat="server" Text="Dina nya sagor finns nu tillgängliga att spela"></asp:Label></div>
       <br />

    <asp:Button ID="gbtn2" runat="server" CssClass="gbtn2" Text="Gå till spela sagor" OnClick="gbtn_Click1" />
</asp:Content>
