<%@ Page Title="" Language="C#" MasterPageFile="~/RedaktorMaster.Master" AutoEventWireup="true" CodeBehind="LaddaUpp.aspx.cs" Inherits="PhoneToys.LaddaUpp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <div class="row">
        <asp:Label runat="server" Text="Beskrivning" CssClass="label alert"></asp:Label>
        <asp:TextBox runat="server" ID="BeskrivningTB" placeholder="Beskrivning"></asp:TextBox>
        <asp:Label runat="server" Text="Pris" CssClass="label alert"></asp:Label>
        <asp:TextBox runat="server" ID="PrisTB" placeholder="Pris"></asp:TextBox>
        <asp:FileUpload runat="server" ID="minUpload" />
        <asp:Button runat="server" ID="knappen" OnClick="knappen_Click" />
        <br />
        <div class="progress success"></div>
    </div>

    
</asp:Content>
