<%@ Page Title="" Language="C#" MasterPageFile="~/RedaktorMaster.Master" AutoEventWireup="true" CodeBehind="RedaktorStart.aspx.cs" Inherits="PhoneToys.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        function getSagaInfo() {
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <asp:Repeater runat="server" ID="sagoRepeater" OnItemCommand="sagoRepeater_ItemCommand">
            <HeaderTemplate>
                <table class="large-10 medium-10 small-0 large-offset-1 medium-offset-1 redaktorRep">
                    <tr>
                        <div class="large-offset-1 medium-offset-1">
                        <a href="#newModal" class="newSagaIMG"><img src="Images/nySaga.png"  style="border-radius:5px;"></img></a></div>
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
                        <td class="td1">
                            <img src='<%#Eval("bilden") %>' id="Image1" runat="server" width="50" height="50" Style="border-radius:5px;" /></td>
                        <td class="td1">
                            <asp:Label ID="Namn" runat="server" CommandName="Sagolink" Text='<%#Eval("Namn") %>' ForeColor="Black"></asp:Label>

                        <td class="td1">
                            <asp:Label runat="server" ID="antal" Text='<%#Eval("Langd") %>'></asp:Label></td>
                        <td class="td1">
                            <asp:Label runat="server" ID="pris" Text='<%#Eval("Pris") %>'></asp:Label></td>
                        <td class="td1">
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Beskrivning") %>'></asp:Label>
                        </td>
                        <td class="td1">
                            <asp:ImageButton runat="server" ID="sagaEditimg" CommandName="edit" ImageUrl="~/Images/gtk-edit.png" ToolTip="Redigera saga" Width="50"  Height="50"/>
<%--                        <a title="<%#Eval("Namn") %>" id="linken" href="#openModal"><img src="/Images/gtk-edit.png" /></a>               --%>
                        </td>
                        <td class="td1">
                            <asp:ImageButton runat="server" ID="sagaRemoveimg" Width="50"  Height="50" ImageUrl="~/Images/trash_can.png" ToolTip="Ta bort saga" CommandName="remove" OnClientClick="return confirm('Vill du verkligen ta bort sagan?')" />
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

        <div id="openModal" class="modalDialog">
            <div>
		<a href="#close" title="Close" class="close">X</a>
		<div class="row">
      <h2 style="color: black; font-family: Sanford;  text-align: center;">Redigera saga</h2>
        <hr />
             <div class="large-12 medium-6 small-12 ">
            <asp:Label ID="Label1" runat="server"  Text="Namn"></asp:Label>
        <asp:TextBox ID="SagaNamnTB" runat="server" CssClass="textbox2"></asp:TextBox>
           </div>
              <div class="large-12 medium-6 small-12 ">
            <asp:Label ID="Label2" runat="server" Text="Pris"></asp:Label>
        <asp:TextBox ID="SagaPrisTB" runat="server" CssClass="textbox2"></asp:TextBox>
            </div>
             <div class="large-12 medium-6 small-12 ">
            <asp:Label ID="Label3" runat="server" Text="Beskrivning"></asp:Label>
        <asp:TextBox ID="SagaBeskrivningTB" runat="server" CssClass="textbox2"></asp:TextBox>
           </div>
                   <br />
             <div class="large-12 medium-6 small-12 ">
            <asp:Label ID="Label9" runat="server" Text="Välj Fil" CssClass=""></asp:Label>
            <asp:FileUpload runat="server" ID="FileUpload1" BackColor="White" />
           </div>
                  <br />
            <div class="large-12 medium-6 small-12 ">
             <asp:Label ID="Label10" runat="server" Text="Välj bild" CssClass=""></asp:Label>
            <asp:FileUpload runat="server" ID="FileUpload2" BackColor="White" />
            </div>
                <br />
            
            
            <asp:Button ID="Spara" runat="server" Text="Spara ändringar" CssClass="esamsknapp" Style="font-family: Sanford; margin-left: 70px;" OnClick="Spara_Click" />
            
</div>
	</div>
        </div>

        <div id="newModal" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<div class="row">
        <h2 style="color: black; font-family: Sanford;  text-align: center;">Lägg till ny saga</h2>
        <hr />
             <div class="large-12 medium-6 small-12 ">
            <asp:Label ID="Label8" runat="server" Text="Namn" ></asp:Label>
            <asp:TextBox runat="server" CssClass="textbox5" ID="Namn" placeholder="Namn" ></asp:TextBox>
            </div>
             <div class="large-12 medium-6 small-12 ">
            <asp:Label ID="Label4" runat="server" Text="Beskrivning" ></asp:Label>
            <asp:TextBox runat="server" CssClass="textbox5" ID="BeskrivningTB" placeholder="Beskrivning"></asp:TextBox>
            </div>
             <div class="large-12 medium-6 small-12 ">
            <asp:Label ID="Label5" runat="server" Text="Pris" ></asp:Label>
            <asp:TextBox runat="server" CssClass="textbox5" ID="PrisTB" placeholder="Pris"></asp:TextBox>
            </div>
             <br />
            
             <div class="large-12 medium-6 small-12 ">
            <asp:Label ID="Label6" runat="server" Text="Välj Fil"></asp:Label>
            <asp:FileUpload runat="server" ID="minUpload" BackColor="White" />
            </div>      
             <br />
            
            
            <asp:Label ID="Label7" runat="server" Text="Välj bild"></asp:Label>
            <asp:FileUpload runat="server" ID="bildUpload" BackColor="White" />
            <br />
           
             <asp:Button runat="server"  Text="Ladda upp" ID="uploadBTN" CssClass="esamsknapp" Style="font-family: Sanford; margin-left: 90px;" OnClick="uploadBTN_Click"  />
</div>
	</div>
</div>

    </div>
</asp:Content>

