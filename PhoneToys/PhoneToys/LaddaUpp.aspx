﻿<%@ Page Title="" Language="C#" MasterPageFile="~/RedaktorMaster.Master" AutoEventWireup="true" CodeBehind="LaddaUpp.aspx.cs" Inherits="PhoneToys.LaddaUpp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <div class="center">
        <br />
        <br />
        <div class="large-6 medium-6 columns">
            <asp:Label runat="server" Text="Beskrivning" CssClass="label PTLabels"></asp:Label>
            <asp:TextBox runat="server" CssClass="textbox2" ID="BeskrivningTB" placeholder="Beskrivning"></asp:TextBox>
            <asp:Label runat="server" Text="Pris" CssClass="label PTLabels"></asp:Label>
            <asp:TextBox runat="server" CssClass="textbox2" ID="PrisTB" placeholder="Pris"></asp:TextBox>
            <br />
            <asp:Label runat="server" Text="Välj Fil" CssClass="label PTLabels"></asp:Label>
            <asp:FileUpload runat="server" ID="minUpload" BackColor="White" />
            <br />
            <asp:Label runat="server" Text="Välj bild" CssClass="label PTLabels"></asp:Label>
            <asp:FileUpload runat="server" ID="bildUpload" BackColor="White" />
            <br />
            <asp:Button runat="server" BackColor="Red" Text="Ladda upp" ID="uploadBTN" CssClass="link" OnClick="uploadBTN_Click" />

            <div class="progress meter pb"></div>

        </div>
    </div>
</asp:Content>
