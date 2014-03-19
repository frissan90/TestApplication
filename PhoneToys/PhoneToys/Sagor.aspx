﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Phonetoys2.Master" AutoEventWireup="true" CodeBehind="Sagor.aspx.cs" Inherits="PhoneToys.Sagor" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <%--<div class="large-8 columns">
          <div class="row">
 
            <div class="large-4 small-6 columns">
              <img src="http://placehold.it/1000x1000&text=Thumbnail">
 
              <div class="panel">
                <h5>Item Name</h5>
                <h6 class="subheader">$000.00</h6>
              </div>
            </div>
 
            <div class="large-4 small-6 columns">
              <img src="http://placehold.it/500x500&text=Thumbnail">
 
              <div class="panel">
                <h5>Item Name</h5>
                <h6 class="subheader">$000.00</h6>
              </div>
            </div>
 
            <div class="large-4 small-6 columns">
              <img src="http://placehold.it/500x500&text=Thumbnail">
 
              <div class="panel">
                <h5>Item Name</h5>
                <h6 class="subheader">$000.00</h6>
              </div>
            </div>
 
            <div class="large-4 small-6 columns">
              <img src="http://placehold.it/500x500&text=Thumbnail">
 
              <div class="panel">
                <h5>Item Name</h5>
                <h6 class="subheader">$000.00</h6>
              </div>
            </div>
 
            <div class="large-4 small-6 columns">
              <img src="http://placehold.it/500x500&text=Thumbnail">
 
              <div class="panel">
                <h5>Item Name</h5>
                <h6 class="subheader">$000.00</h6>
              </div>
            </div>
 
            <div class="large-4 small-6 columns">
              <img src="http://placehold.it/500x500&text=Thumbnail">
 
              <div class="panel">
                <h5>Item Name</h5>
                <h6 class="subheader">$000.00</h6>
              </div>
            </div>
          </div>
        </div>--%>
    <asp:ListView runat="server" ID="SagoView" GroupItemCount="3" OnItemCommand="SagoView_ItemCommand">
        <LayoutTemplate>
            <asp:PlaceHolder ID="groupPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <GroupTemplate>
            <div class="large-8 columns" id="itemPlaceholder" runat="server">
                <div class="row">

                </div>
            </div>
        </GroupTemplate>
        <ItemTemplate>
            <div class="large-4 medium-4 small-6 columns">
              <asp:Image runat="server" CssClass="large-4 medium-4 small-6" ImageUrl='<%#Eval("Bild") %>' />
              <div class="panel large-4 medium-4 small-6">
                <h5><asp:Label CssClass="large-1 medium-1 small-1 tiny" runat="server" ID="text" Text='<%#Eval("Beskrivning") %>'></asp:Label></h5>
                <h6 class="subheader"><asp:Label runat="server" ID="pris" Text='<%#Eval("Pris") %>'></asp:Label></h6>
                  <br />
                  <asp:Button CssClass="button radius large-4 medium-4 small-6 tiny" CommandName="kop" ValidateRequestMode="Disabled" runat="server" Text="Köp" />
              </div>
            </div>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>
