<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="RedigeraSagor2.aspx.cs" Inherits="PhoneToys.RedigeraSagor2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="large-5 medium-5 small-5 columns">
              <div class="label" style="background-color:red;color:yellow;" ID="editNamnlbl">Namn</div>
              <asp:TextBox ID="editNamntbx" runat="server"></asp:TextBox>
    </div>

    <div class="large-5 medium-5 small-5 columns">
              <div class="label" style="background-color:red;color:yellow;" ID="editBeskrivninglbl">Beskrivning</div>
              <asp:TextBox ID="editBeskrivningtbx" runat="server"></asp:TextBox>
    </div>
    </div>


    <div class="row">
        <div class="large-5 medium-5 small-5 columns">
              <div class="label" style="background-color:red;color:yellow;" ID="editPrislbl">Pris</div>
              <asp:TextBox ID="editPristbx" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="editSagavg"  runat="server" ControlToValidate="editPristbx" ErrorMessage="Skriv priset med siffror!" ValidationExpression="^[0-9]+"></asp:RegularExpressionValidator>
    </div>

        <div class="large-5 medium-5 small-5 columns">
              <div class="label" style="background-color:red;color:yellow;" ID="editBildlbl">Bild</div>
            <asp:FileUpload ID="uploadimg" runat="server"></asp:FileUpload>
    </div>
</div>

    <div class="row-hoger">


              <div class="large-3 medium-2 small-3 columns">
                  <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Black" runat="server" ValidationGroup="editSagavg" />
                  <asp:Button runat="server" ValidationGroup="editSagavg" CssClass="round link" BackColor="Red" ID="editBtn" Text="Redigera" OnClick="editBtn_Click"/>
          </div>





        </div>

</asp:Content>
