﻿<%@ Page Title="" Language="C#" MasterPageFile="~/RedaktorMaster.Master" AutoEventWireup="true" CodeBehind="LaddaUpp.aspx.cs" Inherits="PhoneToys.LaddaUpp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="js/progress.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <div class="center">
        <br />
        <br />
        <div class="large-6 medium-6 columns">
            <asp:Label runat="server" Text="Beskrivning" CssClass="label alert"></asp:Label>
            <asp:TextBox runat="server" ID="BeskrivningTB" placeholder="Beskrivning"></asp:TextBox>
            <asp:Label runat="server" Text="Pris" CssClass="label alert"></asp:Label>
            <asp:TextBox runat="server" ID="PrisTB" placeholder="Pris"></asp:TextBox>
            <br />
            <asp:Label runat="server" Text="Välj Fil" CssClass="label alert"></asp:Label>
            <asp:FileUpload runat="server" ID="minUpload" />
            <br />
            <asp:Label runat="server" Text="Välj bild" CssClass="label alert"></asp:Label>
            <asp:FileUpload runat="server" ID="bildUpload" />
            <br />
            <asp:Button OnClientClick="return ProgressBar()" runat="server" BackColor="Red" Text="Ladda upp" ID="uploadBTN" CssClass="link" OnClick="uploadBTN_Click" />
            <div class="progress">
                <div class="meter alert">d</div>
            </div>
        </div>
    </div>



    <script type="text/javascript" src="js/progress.js"></script>
</asp:Content>