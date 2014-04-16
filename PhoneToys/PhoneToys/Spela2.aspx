<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="Spela2.aspx.cs" Inherits="PhoneToys.Spela2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row large-offset-4 medium-offset-4 small-offset-3">
        <div class="labelbamse">Bamse och Sjörövarjulen</div>

        <div class="bamsen large-offset-1 medium-offset-1 small-offset-1">
        <img src="Images/bamse.jpg" />
        </div>
        <br />
        <audio controls="controls">
        </audio>
        <br />
        <asp:Button runat="server" ID="spelaBTN" OnClick="spelaBTN_Click" CssClass="button link" Style="background-color:red;" Text="Spela"/>
    </div>
</asp:Content>
