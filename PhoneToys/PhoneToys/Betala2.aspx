<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="Betala2.aspx.cs" Inherits="PhoneToys.Betala2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    
    <%--Repeater för de sagor som avses betalas--%>
    <div class="panelW">
     <asp:Repeater runat="server" ID="BetalningsRepeater" OnItemCommand="BetalningsRepeater_ItemCommand">
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
        </div>

    <hr />
    
    <%--Panel för Betalinformation --%>

    <div class="panelW">

        <div class="row" style="border: none">
            <div class="large-4 medium-6 small-10">

                <asp:Label runat="server" ID="KorttypLBL" CssClass="label PTLabels">Korttyp</asp:Label>

                <asp:DropDownList runat="server" ID="DropdownList1"></asp:DropDownList>
                <br />
                <br />
                <asp:Label runat="server" ID="Label1" CssClass="PTLabels label">Kortnummer</asp:Label>

                <asp:TextBox runat="server" ID="TextBox1"></asp:TextBox>

                <asp:Label runat="server" ID="Label2" CssClass="PTLabels label">Kortinnehavarens Namn</asp:Label>
                <asp:TextBox runat="server" ID="TextBox2"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Textbox2" ValidationExpression="^[0-9]$"></asp:RegularExpressionValidator>
            </div>
            <div class="large-1 medium-2 small-3">


                <asp:Label runat="server" ID="Label3" CssClass="PTLabels label">Giltighetsdatum MM / ÅÅ</asp:Label>

                
                <asp:DropDownList runat="server" ID="DropdownList3"></asp:DropDownList>
                <asp:DropDownList runat="server" ID="DropdownList2"></asp:DropDownList>

                <br />
                <br />

                <asp:Label runat="server" ID="CVClbl" CssClass="PTLabels label">CVC</asp:Label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Textbox2" ValidationExpression="^[0-9]$"></asp:RegularExpressionValidator>
            </div>

            <div class="large-1 medium-1 small-2">
                <asp:TextBox ID="cvctb" runat="server"></asp:TextBox>
            </div>
            <a href="http://payex.se/support/help/ccexample" target="_blank">
                <asp:Label runat="server" ID="vad" Text="Vad är cvc" Font-Size="Small"></asp:Label></a>

            <hr />
            <asp:Button runat="server" ID="avbrytbtn" CssClass="avbrytBtn" Text="Avbryt" ValidationGroup="buttons" OnClientClick="return confirm('Vill du verkligen avbryta ditt köp?')" OnClick="avbrytbtn_Click" />
            <asp:Button runat="server" ID="godkännbtn" CssClass="gbtn" Text="Godkänn" OnClick="BetalaBTN_Click" />
            <asp:Image runat="server" ID="payexImg" CssClass="payIMG" ImageUrl="Images/payex-logo.gif" />
            <%--<asp:Button runat="server" ID="betalaBTN" CssClass="betalaBTN" Text ="Godkänn"  OnClick="Button1_Click"/>--%>
        </div>
        <hr />
    </div>
    <div></div>




</asp:Content>