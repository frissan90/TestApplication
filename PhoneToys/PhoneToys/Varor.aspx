<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="Varor.aspx.cs" Inherits="PhoneToys.Varor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row" >
        <div class="large-8">
            <asp:Repeater runat="server" ID="VarukorgRepeater" OnItemCommand="VarukorgRepeater_ItemCommand">
                <HeaderTemplate>

                    <table class="large-10 medium-8 small-6">
                        <tr>
                            <th align="left"></th>
                            <th align="left">Namn</th>
                            <th align="left">Antal</th>
                            <th align="left">Pris</th>

                        </tr>
                </HeaderTemplate>

                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Width="30px" Height="30px" ImageUrl="http://lorempixel.com/150/120/technics/" /></td>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sagolink" Text='<%#Eval("Saga") %>' ForeColor="Black"></asp:LinkButton>

                        <td>
                            <asp:Label runat="server" ID="antal" Text='<%#Eval("Antal") %>'></asp:Label></td>
                        <td>
                            <asp:Label runat="server" ID="pris" Text='<%#Eval("Pris") %>'></asp:Label></td>

                        <td><asp:LinkButton runat="server" ID="varukorgRemoveBTN" Text="Ta bort" CommandName="Remove"></asp:LinkButton></td>
                    </tr>

                </ItemTemplate>
                <SeparatorTemplate>
                    <tr>
                        <td colspan="0">
                            <hr />
                        </td>
                    </tr>
                </SeparatorTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
                
            </asp:Repeater>

         <asp:Label ID="totalPrisLB" runat="server" CssClass="row-hoger" Text="123"></asp:Label>
        </div>
        <asp:Button runat="server" PostBackUrl="~/Betala" />
    </div>
</asp:Content>
