<%@ Page Title="" Language="C#" MasterPageFile="~/RedaktorMaster.Master" AutoEventWireup="true" CodeBehind="RedaktorStart.aspx.cs" Inherits="PhoneToys.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <asp:ImageButton ID="Image2" runat="server" ImageUrl="~/Images/nySaga.png" PostBackUrl="~/LaddaUpp" />
        <asp:Repeater runat="server" ID="sagoRepeater" OnItemCommand="sagoRepeater_ItemCommand">
                        <HeaderTemplate>
                <table class="large-10 medium-8 small-6">
                    <tr>
                        <th align="left"></th>
                        <th align="left">Namn</th>
                        <th align="left">Antal</th>
                        <th align="left">Pris</th>
                        <th align="left">Beskrivning</th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <Img src='<%#Eval("bilden") %>' ID="Image1" runat="server" Width="30" Height="30" /></td>
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
                        <asp:ImageButton runat="server" ID="sagaEditimg" CommandName="edit" ImageUrl="~/Images/gtk-edit.png" />
                    </td>
                    <td>
                        <asp:ImageButton runat="server" ID="sagaRemoveimg" Width="30px" Height="30px" ImageUrl="~/Images/deleteIMG.png" CommandName="remove" OnClientClick="return confirm('Vill du verkligen ta bort sagan?')" />
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
