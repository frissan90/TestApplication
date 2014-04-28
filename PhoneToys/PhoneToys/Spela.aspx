<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="Spela.aspx.cs" Inherits="PhoneToys.Spela" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row large-offset-2 medium-offset-2 small-offset-0">
    <asp:Repeater runat="server" ID="MinaSagorRepeater" OnItemCommand="MinaSagorRepeater_ItemCommand">
        <HeaderTemplate>

                    <table class="large-10 medium-8 small-6 bamseOnrepeat">
                        <tr>
                            <th align="left"></th>
                            <th align="left" class="text1">Namn</th>
                            <th align="left" class="text1">Längd</th>

                        </tr>
                </HeaderTemplate>

                <ItemTemplate>
                    <tr>
                        <td class="td1">
                            <img src='<%#Eval("bilden") %>' id="Image1" runat="server" style="border: 1px solid black; width: 40px; height: 40px;" /></td>
                        <td class="td1">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sagolink" Text='<%#Eval("Namn") %>' ForeColor="Black" ></asp:LinkButton></td>

                        <td class="td1"> <asp:Label ID="Label1" runat="server" Text='<%#Eval("Langd") %>'></asp:Label></td>

                        <td class="td1"><%--<asp:LinkButton runat="server" ID="PlayBTN" CommandName="Spela upp" Text="Spela Upp" CssClass="Spelauppknapp"></asp:LinkButton>--%>
                            <asp:ImageButton runat="server" ID="PlayBTN" CommandName="Spela upp" ImageUrl="~/Images/SpelaLiten.png" />
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
</asp:Content>
