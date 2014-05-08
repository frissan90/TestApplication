<%@ Page Title="" Language="C#" MasterPageFile="~/RedaktorMaster.Master" AutoEventWireup="true" CodeBehind="RedaktorStart.aspx.cs" Inherits="PhoneToys.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        function getSagaInfo()
        {
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <asp:Repeater runat="server" ID="sagoRepeater" OnItemCommand="sagoRepeater_ItemCommand">
            <HeaderTemplate>
                <table class="large-10 medium-10 small-10">
                    <tr>
                        <a href="#newModal" class="newSagaIMG"><img src="Images/nySaga.png"></img></a> <%--<asp:ImageButton ID="Image2" runat="server" CssClass="newSagaIMG" ImageUrl="~/Images/nySaga.png" ToolTip="Ny saga" PostBackUrl="~/LaddaUpp" />--%>
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
                            <asp:Label runat="server" Text='<%#Eval("Beskrivning") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:ImageButton runat="server" ID="sagaEditimg" CommandName="edit" ImageUrl="~/Images/gtk-edit.png" ToolTip="Redigera saga" />
<%--                        <a title="<%#Eval("Namn") %>" id="linken" href="#openModal"><img src="/Images/gtk-edit.png" /></a>               --%>
                        </td>
                        <td>
                            <asp:ImageButton runat="server" ID="sagaRemoveimg" Width="30px" Height="30px" ImageUrl="~/Images/trash_can.png" ToolTip="Ta bort saga" CommandName="remove" OnClientClick="return confirm('Vill du verkligen ta bort sagan?')" />
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
        <h2>Redigera Saga</h2> 
        <hr />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="SagaNamnTB" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="SagaPrisTB" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="SagaBeskrivningTB" runat="server"></asp:TextBox>
            <asp:Button ID="Spara" runat="server" Text="Button" OnClick="Spara_Click" />
</div>
	</div>
</div>

        <div id="newModal" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<div class="row">
        <h2>Ny Saga</h2> 
        <hr />
            <asp:Label ID="Label8" runat="server" Text="Namn" CssClass="label PTLabels"></asp:Label>
            <asp:TextBox runat="server" CssClass="textbox2" ID="Namn" placeholder="Namn"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="Beskrivning" CssClass="label PTLabels"></asp:Label>
            <asp:TextBox runat="server" CssClass="textbox2" ID="BeskrivningTB" placeholder="Beskrivning"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" Text="Pris" CssClass="label PTLabels"></asp:Label>
            <asp:TextBox runat="server" CssClass="textbox2" ID="PrisTB" placeholder="Pris"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Välj Fil" CssClass="label PTLabels"></asp:Label>
            <asp:FileUpload runat="server" ID="minUpload" BackColor="White" />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Välj bild" CssClass="label PTLabels"></asp:Label>
            <asp:FileUpload runat="server" ID="bildUpload" BackColor="White" />
            <br />
            <asp:Button runat="server" BackColor="Red" Text="Ladda upp" ID="uploadBTN" CssClass="link" OnClick="uploadBTN_Click"  />
</div>
	</div>
</div>

    </div>
</asp:Content>
