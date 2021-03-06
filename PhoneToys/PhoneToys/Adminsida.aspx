﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminFinal.Master" AutoEventWireup="true" CodeBehind="Adminsida.aspx.cs" Inherits="PhoneToys.Adminsida" EnableEventValidation="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
  <div class="row collapse large-offset-2 medium-offset-4 small-offset-3">
        <br />


        <asp:Repeater runat="server" ID="RedaktorRepeater" OnItemCommand="RedaktorRepeater_ItemCommand">
                <HeaderTemplate>
                            
                    <table class="large-10 medium-10 small-10 RepAdmin" >
                        <tr>
                            <a href="#newModal" class="newSagaIMG">
                                
                            
                            <th align="left">Användarnamn</th>
                            <th align="left">Förnamn</th>
                            <th align="left">Efternamn</th>
                            <th align="left">Epost</th> 
                             

                        </tr>
                </HeaderTemplate>

                <ItemTemplate>
                    
                    <tr>
                        
                        <td class="whiteRow">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sagolink" Text='<%#Eval("Uname") %>' ForeColor="Black"></asp:LinkButton>
                        <td class="whiteRow">
                            <asp:Label runat="server" ID="pris" Text='<%#Eval("Fname") %>'></asp:Label></td>
                        <td class="whiteRow">
                            <asp:Label runat="server" ID="Label1" Text='<%#Eval("Lname") %>'></asp:Label></td>
                        <td class="whiteRow">
                            <asp:Label runat="server" ID="Label2" Text='<%#Eval("Email") %>'></asp:Label></td>
                        <td class="whiteRow center">
                            <asp:ImageButton runat="server" ID="redaktorEditimg" CommandName="edit" ImageUrl="~/Images/gtk-edit.png" ToolTip="Redigera redaktor"/>
                        <asp:ImageButton runat="server" ID="sagaRemoveimg" Width="30px" Height="30px" ImageUrl="~/Images/trash_can.png" ToolTip="Ta bort redaktor" CommandName="remove" OnClientClick="return confirm('Vill du verkligen ta bort redaktören?')" />
                        <a href="#newModal"><img src="Images/add_contact.png" style="width:20px;height:20px; margin-bottom: 17px;" title="Lägg till redaktör"/></a>
                   </tr>

                        
                </ItemTemplate>

          
                <FooterTemplate>
                    </table>
                    
                </FooterTemplate>
                
            </asp:Repeater>



    </div>

<%--Modaler --%>
    <div id="openModal" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<div class="row">
    <h2 style="color: black; font-family: Sanford; float:left; margin-bottom: 30px;">Redigera Redaktör</h2>
   <hr />

            <div class=" large-12 medium-6 small-12">
                <asp:Label ID="Label4" runat="server" Text="Förnamn"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FnameATB" ValidationGroup="registerEditor" ErrorMessage="5) Förnamn krävs" ForeColor="Red">5</asp:RequiredFieldValidator>
                <asp:TextBox ID="UnameTB" placeholder="Förnamn" runat="server" CssClass="textbox2"></asp:TextBox>
            </div>

            <div class=" large-12 medium-6 small-12">
                <asp:Label ID="Label3"  runat="server" Text="Epost"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EmailATB" ValidationGroup="registerEditor" ErrorMessage="2) Epost krävs" ForeColor="Red">2</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailATB" ValidationGroup="registerEditor" ErrorMessage="1) Fältet innehåller ogiltiga tecken" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">1</asp:RegularExpressionValidator>
                <asp:TextBox ID="EmailTB" placeholder="E-post" runat="server" CssClass="textbox2"></asp:TextBox>
            </div>
            
            <div class=" large-12 medium-6 small-12">
                <asp:Label ID="Label6"  runat="server" Text="Förnamn"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FnameATB" ValidationGroup="registerEditor" ErrorMessage="5) Förnamn krävs" ForeColor="Red">5</asp:RequiredFieldValidator>
                <asp:TextBox ID="FnameTB" placeholder="Förnamn" runat="server" CssClass="textbox2"></asp:TextBox>
            </div>
            <div class=" large-12 medium-6 small-12">
                <asp:Label ID="Label7"  runat="server" Text="Efternamn" ></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="LnameATB" ValidationGroup="registerEditor" ErrorMessage="6) Efternamn krävs" ForeColor="Red">6</asp:RequiredFieldValidator>
                <asp:TextBox ID="LnameTB" runat="server" placeholder="Efternamn" CssClass="textbox2"></asp:TextBox>
            </div>
            <asp:Button ID="Spara" runat="server" Text="Spara ändringar"  CssClass="esamsknapp" Style="font-family: Sanford; margin-left: 70px;" OnClick="Spara_Click" />
</div>
	</div>
</div>

    <div id="newModal" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<div class="row">
       <h2 style="color: black; font-family: Sanford;  text-align: center;">Lägg till ny redaktör</h2>
        <hr />

            <div class="row">

            <div class="large-12 medium-6 small-12 ">
                <asp:Label ID="Label5" runat="server" Text="Användarnamn"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UnameATB" ValidationGroup="registerEditor" ErrorMessage="1) Användarnamn krävs" ForeColor="Red">1</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="UnameATB" ValidationGroup="registerEditor" ValidationExpression="^[a-öA-Ö0-9]+" ErrorMessage="1) Fältet innehåller ogiltiga tecken" ForeColor="Red">1</asp:RegularExpressionValidator>
                <asp:TextBox ID="UnameATB" placeholder="Användarnamn" runat="server" CssClass="textbox6"></asp:TextBox>

            </div>

            <div class=" large-12 medium-6 small-12">
                <asp:Label ID="Label8"  runat="server" Text="Epost"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="EmailATB" ValidationGroup="registerEditor" ErrorMessage="2) Epost krävs" ForeColor="Red">2</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="EmailATB" ValidationGroup="registerEditor" ErrorMessage="1) Fältet innehåller ogiltiga tecken" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">1</asp:RegularExpressionValidator>
                <asp:TextBox ID="EmailATB" placeholder="E-post" runat="server" CssClass="textbox6"></asp:TextBox>
            </div>

            <div class=" large-12 medium-6 small-12">
                <asp:Label ID="Label9"  runat="server" Text="Lösenord"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="PWTBA" ValidationGroup="registerEditor" ErrorMessage="3) Lösenord krävs" ForeColor="Red">3</asp:RequiredFieldValidator>
                <asp:TextBox ID="PWTBA" runat="server" placeholder="Lösenord" TextMode="Password" CssClass="textbox6"></asp:TextBox>
            </div>
            <div class=" large-12 medium-6 small-12">
                <asp:Label ID="Label10"  runat="server" Text="Upprepa lösenord"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ConfPWTBA" ValidationGroup="registerEditor" ErrorMessage="4) Vänligen upprepa lösenordet" ForeColor="Red">4</asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PWTBA" ControlToValidate="ConfPWTBA" ErrorMessage="4) Lösenorden är inte lika" ValidationGroup="registerEditor" ForeColor="Red">4</asp:CompareValidator>
                <asp:TextBox ID="ConfPWTBA" placeholder="Upprepa lösenord" runat="server" TextMode="Password" CssClass="textbox6"></asp:TextBox>
            </div>
            <div class=" large-12 medium-6 small-12">
                <asp:Label ID="Label11"  runat="server" Text="Förnamn"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FnameATB" ValidationGroup="registerEditor" ErrorMessage="5) Förnamn krävs" ForeColor="Red">5</asp:RequiredFieldValidator>
                <asp:TextBox ID="FnameATB" placeholder="Förnamn" runat="server" CssClass="textbox6"></asp:TextBox>
            </div>
            <div class=" large-12 medium-6 small-12">
                <asp:Label ID="Label12"  runat="server" Text="Efternamn" ></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="LnameATB" ValidationGroup="registerEditor" ErrorMessage="6) Efternamn krävs" ForeColor="Red">6</asp:RequiredFieldValidator>
                <asp:TextBox ID="LnameATB" runat="server" placeholder="Efternamn" CssClass="textbox6"></asp:TextBox>
            </div>

            <asp:ValidationSummary DisplayMode="List" ID="ValidationSummary1" runat="server" ValidationGroup="registerEditor" />
            <asp:Button runat="server"  Text="Registrera redaktör"  CssClass="esamsknapp" Style="font-family: Sanford; margin-left: 70px;" ValidationGroup="registerEditor" Onclick="registerEditorBTN_Click" />

        </div>
</div>
	</div>
        </div>

</asp:Content>
