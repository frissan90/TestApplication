<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="Spela.aspx.cs" Inherits="PhoneToys.Spela" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    
    <div class="row">
        <div class="center">
    <asp:Repeater runat="server" ID="MinaSagorRepeater" OnItemCommand="MinaSagorRepeater_ItemCommand">
        <HeaderTemplate>
                    <table class="large-11 large-offset-1 medium-8 medium-offset-2 small-1 bamseOnrepeat">
                        <tr>
                            <th align="left"></th>
                            <th align="left" class="text1">Namn</th>
                            <th align="left" class="text1">Längd</th>

                        </tr>

                </HeaderTemplate>

                <ItemTemplate>
                    <tr>
                        <td class="td1">
                            <img src='<%#Eval("bilden") %>' id="Image1" runat="server" style="width: 100px; height: 100px;border-radius:5px;" /></td>
                        <td class="td1">
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Namn") %>' ForeColor="Black" CssClass="texting" ></asp:Label></td>

                        <td class="td1"> <asp:Label ID="Label1" runat="server" Text='<%#Eval("Langd") %>' CssClass="texting"></asp:Label></td>

                        <td class="td1">
                            <asp:ImageButton runat="server" ID="PlayBTN" CommandName="Spela upp" ImageUrl="~/Images/SpelaMellan.png" />
                        </td>
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
        </div>

   </div>
</asp:Content>

