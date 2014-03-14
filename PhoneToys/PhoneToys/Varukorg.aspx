<%@ Page Title="" Language="C#" MasterPageFile="~/Phonetoys2.Master" AutoEventWireup="true" CodeBehind="Varukorg.aspx.cs" Inherits="PhoneToys.Varukorg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="large-10" >
        <div class="large-20">
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
                            <asp:Image runat="server" Width="30px" Height="30px" ImageUrl="http://lorempixel.com/150/120/technics/" /></td>
                        <td>
                            <asp:LinkButton runat="server" CommandName="Sagolink" Text='<%#Eval("Saga") %>' ForeColor="Black"></asp:LinkButton>

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

        <%--<div class="large-20" style="border: solid;">
            <h3>Hej</h3>
        </div>

        <div class="large-20" style="border: solid;">
            <h3>Hej</h3>
        </div>--%>
    </div>
</asp:Content>
