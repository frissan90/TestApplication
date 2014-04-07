<%@ Page Title="" Language="C#" MasterPageFile="~/RedaktorMaster.Master" AutoEventWireup="true" CodeBehind="RedigeraSagor1.aspx.cs" Inherits="PhoneToys.RedigeraSagor1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
    <asp:ListView runat="server" ID="SagorEditLoad" GroupItemCount="1" OnItemCommand="SagorEditLoad_ItemCommand">
        <LayoutTemplate>
            <asp:PlaceHolder ID="groupPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <GroupTemplate>
            <div class="large-8 columns" id="itemPlaceholder" runat="server">

            </div>
        </GroupTemplate>
        <ItemTemplate>
            <div class="large-8 medium-6 small-12 columns">
              <Img ID="Image1" runat="server" class="large-4 medium-4 small-6" src='<%#Eval("bilden") %>' />
              <div class="panel large-4 medium-4 small-6" style="background-color:grey;">
                <h5><asp:Label CssClass="large-1 medium-1 small-1 tiny" runat="server" ID="text" Text='<%#Eval("Namn") %>' style="color:whitesmoke"></asp:Label></h5>
                <h6 class="subheader"><asp:Label runat="server" ID="pris" Text='<%#Eval("Pris") + " kr/st" %>' style="color:whitesmoke"></asp:Label></h6>
                  <br />
                  <asp:Button ID="Button1" CssClass="button radius large-4 medium-2 small-1 tiny" CommandName="kop" ValidateRequestMode="Disabled" runat="server" Text="Redigera" Style="background-color:turquoise; color:crimson;" />
              </div>
            </div>
        </ItemTemplate>
    </asp:ListView>
        </div>
</asp:Content>
