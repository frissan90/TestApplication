<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="TackForDittKop.aspx.cs" Inherits="PhoneToys.TackForDittKop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

     <div class="large-6 medium-12 small-12">
         <div class="panelW2">
        <asp:Label ID="Tack" runat="server" Text="Tack För Ditt Köp" CssClass="TackF"></asp:Label>
    <br />
   <asp:Label ID="Nyttköp" runat="server" Text="Dina nya sagor finns nu på Spela Sagor i menyn"></asp:Label>
       <br />

    <asp:Button ID="gbtn2" runat="server" CssClass="gbtn2" Text="Gå till spela sagor" OnClick="gbtn_Click1" />
         </div>
    </div>
</asp:Content>
