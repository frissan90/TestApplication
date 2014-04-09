<%@ Page Title="" Language="C#" MasterPageFile="~/RedaktorMaster.Master" AutoEventWireup="true" CodeBehind="RedaktorStart.aspx.cs" Inherits="PhoneToys.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <asp:Repeater runat="server" ID="sagoRepeater" OnItemCommand="sagoRepeater_ItemCommand">
            <HeaderTemplate>
                <table class="large-10 medium-10 small-10">
                    <tr>
                        <asp:ImageButton ID="Image2" runat="server" CssClass="newSagaIMG" ImageUrl="~/Images/nySaga.png" ToolTip="Ny saga" PostBackUrl="~/LaddaUpp" />
                        <th></th>
                        <th>Namn</th>
                        <th>Längd</th>
                        <th>Pris</th>
                        <th>Beskrivning</th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <div>
                    <tr>
                        <td>
                            <img src='<%#Eval("bilden") %>' id="Image1" runat="server" width="30" height="30" /></td>
                        <td>
                            <asp:Label ID="Namn" runat="server" CommandName="Sagolink" Text='<%#Eval("Namn") %>' ForeColor="Black"></asp:Label>

                        <td>
                            <asp:Label runat="server" ID="antal" Text='<%#Eval("Langd") %>'></asp:Label></td>
                        <td>
                            <asp:Label runat="server" ID="pris" Text='<%#Eval("Pris") %>'></asp:Label></td>
                        <td>
                            <asp:TextBox runat="server" TextMode="MultiLine" Text='<%#Eval("Beskrivning") %>'></asp:TextBox>
                        </td>
                        <td>
                            <asp:ImageButton runat="server" ID="sagaEditimg" CommandName="edit" ImageUrl="~/Images/gtk-edit.png" ToolTip="Redigera saga" />
                        </td>
                        <td>
                            <asp:ImageButton runat="server" ID="sagaRemoveimg" Width="30px" Height="30px" ImageUrl="~/Images/remove.png" ToolTip="Ta bort saga" CommandName="remove" OnClientClick="return confirm('Vill du verkligen ta bort sagan?')" />
                        </td>
                    </tr>
                </div>
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
