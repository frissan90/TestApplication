<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="Betala2.aspx.cs" Inherits="PhoneToys.Betala2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    
    <%--Repeater för de sagor som avses betalas--%>
    <div class="panelW">
     <asp:Repeater runat="server" ID="BetalningsRepeater" OnItemCommand="BetalningsRepeater_ItemCommand">
                <HeaderTemplate>

                    <table class="large-10 medium-8 small-6">
                        <tr class="blueRow">
                            <th align="left">Namn</th>
                            <th align="left">Pris</th>
                            <th align="left">Ta bort</th>
                             

                        </tr>
                </HeaderTemplate>

                <ItemTemplate>
                    
                    <tr>
                        
                        <td class="whiteRow">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sagolink" Text='<%#Eval("Saga") %>' ForeColor="Black"></asp:LinkButton>
                        <td class="whiteRow">
                            <asp:Label runat="server" ID="pris" Text='<%#Eval("Pris") %>'></asp:Label></td>

                        <td><%--<asp:LinkButton runat="server" ID="varukorgRemoveBTN" Text="Ta bort" CommandName="Remove"></asp:LinkButton>--%>
                        <asp:ImageButton runat="server" ID="sagaRemoveimg" Width="30px" Height="30px" ImageUrl="~/Images/trash_can.png" ToolTip="Ta bort saga" CommandName="remove" OnClientClick="return confirm('Vill du verkligen ta bort sagan?')" /></td>
                    </tr>
                        
                </ItemTemplate>
                <%--<SeparatorTemplate>
                    <tr class="blueRow">
                        <td colspan="0">
                            <hr />
                        </td>
                    </tr>
                </SeparatorTemplate>--%>
          
                <FooterTemplate>
                    </table>
                    
                </FooterTemplate>
                
            </asp:Repeater>
        <asp:Label runat="server" ID="totPrisLBL" CssClass="right PTLabels"></asp:Label>
        </div>

    
    <%--Panel för Betalinformation --%>
      
    <div class="panelW">

        <div class="row" style="border: none">
            <div class="large-3 large-offset-1 columns medium-6">

                <asp:Label runat="server" ID="KorttypLBL" CssClass="KortypLBL">Korttyp</asp:Label>

                <asp:DropDownList runat="server" ID="DropdownList1" CssClass="DDL"></asp:DropDownList><br />
               

                
                <asp:Label runat="server" ID="Label1" CssClass="KortNummer">Kortnummer</asp:Label>
                <asp:TextBox runat="server" ID="TextBox1" CssClass="KortNumBox"></asp:TextBox>

                <asp:Label runat="server" ID="Label2" CssClass="PTLabels">Kortinnehavarens Namn</asp:Label>
                <asp:TextBox runat="server" ID="TextBox2"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Textbox2" ValidationExpression="^[0-9]$"></asp:RegularExpressionValidator>
            </div>
           
            <div class="large-3 large-offset-1 ">

                
                <asp:Label runat="server" ID="Label3" CssClass="PTLabels">Giltighetsdatum <br /><br />Månad</asp:Label>
                <asp:DropDownList runat="server" ID="DropdownList3" CssClass="DDL2"></asp:DropDownList>
                <br />
                <asp:Label runat="server" ID="Label4" CssClass="PTLabels">År</asp:Label>
                <asp:DropDownList runat="server" ID="DropdownList2" CssClass="DDL2"></asp:DropDownList>

            </div>

                
                 <div class="large-3 large-offset-1">
                <asp:Label runat="server" ID="CVClbl" CssClass="PTLabels">CVC</asp:Label></div><br/>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Textbox2" ValidationExpression="^[0-9]$"></asp:RegularExpressionValidator> 
            </div>
        
            <div class="large-1 large-offset-1 columns medium-1 small-2">
                <asp:TextBox ID="cvctb" runat="server" placeholder="555"></asp:TextBox>
            </div> 
            <a href="http://payex.se/support/help/ccexample" onclick="window.open(this.href, 'mywin',
                'left=20,top=20,width=500,height=500,toolbar=1,resizable=0'); return false;" > <br />
                <asp:Label runat="server" ID="vad" Text="Vad är CVC" Font-Size="Small"></asp:Label></a> <img src="Images/cvc.png" /> 

            <hr />
            <asp:Button runat="server" ID="avbrytbtn" CssClass="avbrytBtn" Text="Avbryt" ValidationGroup="buttons" OnClientClick="return confirm('Vill du verkligen avbryta ditt köp?')" OnClick="avbrytbtn_Click" />
            <asp:Button runat="server" ID="godkännbtn" CssClass="gbtn" Text="Betala" OnClick="BetalaBTN_Click" />
            <asp:Image runat="server" ID="payexImg" CssClass="payIMG" ImageUrl="Images/payex-logo.gif" />
             
         
        <hr />
     <img src="Images/cards.png" />
    <div></div>
        </div>
        
   


</asp:Content>