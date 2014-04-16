<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="SagorNY.aspx.cs" Inherits="PhoneToys.SagorNY" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <%--<div class="row">
        <div class="panelW">
            <div class="row">
                <asp:ListView runat="server" ID="SagorLoad" GroupItemCount="2" OnItemCommand="SagorLoad_ItemCommand">
                    <LayoutTemplate>
                        <div class="ItemTemp">
                            <asp:PlaceHolder ID="groupPlaceholder" runat="server"></asp:PlaceHolder>
                        </div>
                    </LayoutTemplate>
                    <GroupTemplate>
                        <div class="large-8" id="itemPlaceholder" runat="server">
                        </div>
                    </GroupTemplate>
                    <ItemTemplate>

                        <div class="large-8 medium-6 small-12">
                            <img src='<%#Eval("bilden") %>' id="Image1" runat="server" style="border: 1px solid black" class="large-4 medium-4 small-6" />
                            <div class="panel large-4 medium-4 small-6" style="background-color: grey;">
                                <h5>
                                    <asp:Label CssClass="large-1 medium-1 small-1 tiny" runat="server" ID="text" Text='<%#Eval("Namn") %>' Style="color: whitesmoke"></asp:Label></h5>
                                <h6 class="subheader">
                                    <asp:Label runat="server" ID="pris" Text='<%#Eval("Pris") + " kr/st" %>' Style="color: whitesmoke"></asp:Label></h6>
                                <br />
                                <asp:Button ID="Button1" CssClass="button radius large-4 medium-2 small-1 tiny" CommandName="kop" ValidateRequestMode="Disabled" runat="server" Text="Köp" Style="background-color: turquoise; color: crimson;" />
                            </div>
                        </div>

                    </ItemTemplate>
                </asp:ListView>   
                <div class="large-8 large-offset-8 medium-6 small-8">
                    <asp:Button runat="server" ID="BetalaBTN" Text="Betala" CssClass="BetButton" OnClick="BetalaBTN_Click" />
                </div>
            </div>
        </div>
        <script type="text/javascript">
        </script>
    </div>--%>

    <div class="row small-12">
    <div class="listaProdukt">
 
        <asp:ListView runat="server" ID="SagorLoad" GroupItemCount="3" OnItemCommand="SagorLoad_ItemCommand" >
            <LayoutTemplate>
                <asp:PlaceHolder ID="groupPlaceholder" runat="server"></asp:PlaceHolder>
            </LayoutTemplate>
            <GroupTemplate>
                <div class= id="itemPlaceholder" runat="server">
                    <%--<div class="row

                    </div>--%>
                </div>
            </GroupTemplate>
            <ItemTemplate>
             
                <div class="produkt panel ">
                    <img src='<%#Eval("bilden") %>' id="Image1" runat="server" style=" width: 170px"/>
                   
                        <p>
                            <asp:Label CssClass="large-1 medium-1 small-1 tiny" runat="server" ID="text" Text='<%#Eval("Namn") %>'  style=" width: 170px"></asp:Label></p>
                        <h6 class="subheader">
                            <asp:Label runat="server" ID="pris" Text='<%#Eval("Pris") + " kr/st" %>'  style=" width: 100px"></asp:Label></h6>
                        
                        <hr/>
                    <asp:Button ID="Button1" CssClass="large-4 medium-2 small-1 tiny esamsknapp" CommandName="kop" ValidateRequestMode="Disabled" runat="server" Text="Köp"  style=" width: 170px" />
                    </div>
                
            </ItemTemplate>
        </asp:ListView>
       <br />
    
        <asp:Button runat="server" ID="BetalaBTN" Text="Betala" CssClass="betalaknapp large-offset-8 " OnClick="BetalaBTN_Click" />
      
             </div>
  
</div>

</asp:Content>
