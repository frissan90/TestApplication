<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="SagorNY.aspx.cs" Inherits="PhoneToys.SagorNY" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    

    <div class="row small-12 panelK"
        <div class="listaProdukt">

            <asp:ListView runat="server" ID="SagorLoad" GroupItemCount="3" OnItemCommand="SagorLoad_ItemCommand">
                <LayoutTemplate>
                    <asp:PlaceHolder ID="groupPlaceholder" runat="server"></asp:PlaceHolder>
                </LayoutTemplate>
                <GroupTemplate>
                    <div class="row" id="itemPlaceholder" runat="server">
                        <%--<div class="row">

                    </div>--%>
                    </div>
                </GroupTemplate>
                <ItemTemplate>

                    <div class="produkt panel large-12 small-12 ">
                        <img src='<%#Eval("bilden") %>' id="Image1" runat="server" style="width: 170px; height:200px;" />

                        <p>
                            <asp:Label CssClass="large-1 medium-1 small-1 tiny" runat="server" ID="text" Text='<%#Eval("Namn") %>' Style="width: 170px"></asp:Label>
                        </p>
                        <h6 class="subheader">
                            <asp:Label runat="server" ID="pris" Text='<%#Eval("Pris") + " kr/st" %>' Style="width: 100px"></asp:Label></h6>

                        <hr />
                        <asp:Button ID="Button1" CssClass="large-4 medium-2 small-1 tiny esamsknapp" CommandName="kop" ValidateRequestMode="Disabled" runat="server" Text="Köp" Style="width: 170px" />
                    </div>

                </ItemTemplate>
            </asp:ListView>
            <br />

            <asp:Button runat="server" ID="BetalaBTN" Text="Gå till varukorgen" CssClass="betalaknapp large-offset-8 " OnClick="BetalaBTN_Click" />
        </div>
    </div>  
</asp:Content>
