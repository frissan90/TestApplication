﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="Connect.aspx.cs" Inherits="PhoneToys.Connect" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class=" large-5 columns medium-6 small-8 large-offset-4 medium-offset-3">
        <div class="panel">
            
                <asp:Label ID="Label1" runat="server" Text="Skriv ditt Bamse-ID" Font-Size="Large" Font-Bold="true"></asp:Label><br />
            <br />
           
            <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Placeholder="exempel 1520"></asp:TextBox><asp:Label runat="server" ID="BIDError" Visible="false"></asp:Label>
            <div class="large-offset-2 medium-offset-1 small-offset-0">
            <asp:ImageButton ID="imgBtn" runat="server" imageurl="~/Images/Spela1.png" Borderwidth="0" OnClick="imgBtn_Click" />
            </div>

            <div class="large-12 medium-10 small-6 large-offset-2 medium-offset-1 small-offset-3 tvatt"> Bamse-ID hittar du på bamsens tvättlapp!
                <asp:Image runat="server" ID="Tvattbild" ImageUrl="~/Images/tvattlapp6b.PNG" />

            </div>
                
        </div>
    </div>
</asp:Content>
