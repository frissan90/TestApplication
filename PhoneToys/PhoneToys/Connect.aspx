﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="Connect.aspx.cs" Inherits="PhoneToys.Connect" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class=" large-5 columns medium-5 center">
        <div class="panel">
            
                <asp:Label ID="Label1" runat="server" Text="Nummer för identifiering" Font-Size="Large" Font-Bold="true"></asp:Label><br />
           
            <asp:TextBox ID="TextBox1" runat="server" Placeholder="exempel 1520"></asp:TextBox>
            <asp:ImageButton ID="imgBtn" runat="server" imageurl="Images/play.gif" Borderwidth="0" OnClick="imgBtn_Click" />
            
                
        </div>
    </div>
</asp:Content>