<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="Betala2.aspx.cs" Inherits="PhoneToys.Betala2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <%--Repeater för de sagor som avses betalas--%>
    <div class="panelW">
        <div class="large-12 large-offset-1 medium-12 medium-offset-2 small-12 small-offset-3">
            <asp:Repeater runat="server" ID="BetalningsRepeater" OnItemCommand="BetalningsRepeater_ItemCommand">
                <HeaderTemplate>

                    <table class="large-10 medium-8 small-6" style="border-collapse:collapse">
                        <tr class="blueRow" style="border-bottom: 1px solid black">
                            <th align="left">Namn</th>
                            <th align="left">Cost</th>
                            <th align="left">Ta bort</th>
                        </tr>
                </HeaderTemplate>

                <ItemTemplate>

                    <tr>

                        <td class="whiteRow">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sagolink" Text='<%#Eval("Saga") %>' ForeColor="Black"></asp:LinkButton>
                        <td class="whiteRow">
                            <asp:Label runat="server" ID="pris" Text='<%#Eval("Pris") %>'></asp:Label></td>

                        <td>
                            <asp:ImageButton runat="server" ID="sagaRemoveimg" Width="30px" Height="30px" ImageUrl="~/Images/trash_can.png" ToolTip="Ta bort saga" CommandName="Remove" OnClientClick="return confirm('Vill du verkligen ta bort sagan?')" /></td>
                    </tr>
                    
                </ItemTemplate>
                <SeparatorTemplate>
                    <tr>
                    <td colspan="3">
                        <hr />
                    </td>
                        </tr>
                </SeparatorTemplate>
                <FooterTemplate>
                    </table>
                    
               
                </FooterTemplate>

            </asp:Repeater>
            <div class="large-offset-8 medium-offset-6 small-offset-3">
                <asp:Label runat="server" ID="totPrisLBL" CssClass="enlabel"></asp:Label>
            </div>
        </div>

    </div>
    <%--Panel för Betalinformation --%>

    <div class="panelW">

        <div class="row">
            <div class="large-3 large-offset-4 columns medium-6">

                <asp:Label runat="server" ID="KorttypLBL" CssClass="PTLabels2">Korttyp</asp:Label>

                <asp:DropDownList runat="server" ID="DropdownList1" CssClass="DDL"></asp:DropDownList><br />



                <asp:Label runat="server" ID="Label1" CssClass="PTLabels2">Kortnummer</asp:Label>
                <asp:TextBox runat="server" ID="TextBox1" CssClass="textbox3"></asp:TextBox>

                <asp:Label runat="server" ID="Label2" CssClass="PTLabels2">Kortinnehavarens Namn</asp:Label>
                <asp:TextBox runat="server" ID="TextBox2" CssClass="textbox3"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Textbox2" ValidationExpression="^[0-9]$"></asp:RegularExpressionValidator>
            </div>

            <div class="large-3 medium-6 large-offset-4 columns ">


                <asp:Label runat="server" ID="Label3" CssClass="PTLabels2">Giltighetsdatum <br /><br />Månad</asp:Label>
                <asp:DropDownList runat="server" ID="DropdownList3" CssClass="DDL2"></asp:DropDownList>
                <br />
                <asp:Label runat="server" ID="Label4" CssClass="PTLabels2">År</asp:Label>
                <asp:DropDownList runat="server" ID="DropdownList2" CssClass="DDL2" Style="margin-left: 30px"></asp:DropDownList>

            </div>


          
               
            
            <br />
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Textbox2" ValidationExpression="^[0-9]$"></asp:RegularExpressionValidator>
        </div>
        
        <div class="large-3 medium-6 large-offset-4 columns">
            <asp:Label runat="server" ID="CVClbl" CssClass="PTLabels2">CVC</asp:Label>
            <asp:TextBox ID="cvctb" runat="server" placeholder="555" CssClass="textbox3"></asp:TextBox>

            <a href="http://payex.se/support/help/ccexample" onclick="window.open(this.href, 'mywin',
                'left=20,top=20,width=500,height=500,toolbar=1,resizable=0'); return false;">
                <br />
                <asp:Label runat="server" ID="vad" Text="Vad är CVC" Font-Size="Small"></asp:Label></a>
            <img src="Images/cvc.png" />
        </div>
        <hr />
        <div class="large-offset-4">
            <asp:Button runat="server" ID="avbrytbtn" CssClass="avbrytBtn" Text="Avbryt" ValidationGroup="buttons" OnClientClick="return confirm('Vill du verkligen avbryta ditt köp?')" OnClick="avbrytbtn_Click" />
            <asp:Button runat="server" ID="godkännbtn" CssClass="gbtn" Text="Betala" OnClick="BetalaBTN_Click" />
        </div>
        <div class="large-offset-10">
            <asp:Image runat="server" ID="payexImg" CssClass="payIMG" ImageUrl="Images/payex-logo.gif" />
        </div>

        <hr />
        <div class="large-offset-1">
            <img src="Images/verified-by-visa.png" />
            <img src="Images/mastercard-securecode.png" />
        </div>
    </div>




</asp:Content>
