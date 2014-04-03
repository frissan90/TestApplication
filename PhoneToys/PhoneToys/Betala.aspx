<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="Betala.aspx.cs" Inherits="PhoneToys.Betala" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row" style="border:none">
    <div class="large-9 medium-9 small-12" ">
        <asp:Label runat="server" ID="KorttypLBL" CssClass="label PTLabels">Korttyp</asp:Label>
            
      <asp:DropDownList runat="server" ID="DropdownList1"></asp:DropDownList>
            <br />
            <br />
       <asp:Label runat="server" ID="Label1" CssClass="PTLabels label">Kortnummer</asp:Label>
            
        <asp:TextBox runat="server" ID="TextBox1"></asp:TextBox>
                
       <asp:Label runat="server" ID="Label2" CssClass="PTLabels label">Kortinnehavarens Namn</asp:Label>
        <asp:TextBox runat="server" ID="TextBox2"></asp:TextBox> 
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Textbox2" ValidationExpression="^[0-9]$"></asp:RegularExpressionValidator>
         
        <div class="large-1 medium-1 small-5"> 
        <asp:Label runat="server" ID="Label3" CssClass="PTLabels label">Giltighetsdatum</asp:Label>
            
        <asp:DropDownList runat="server" ID="DropdownList2"></asp:DropDownList>
        <asp:DropDownList runat="server" ID="DropdownList3"></asp:DropDownList>
            <br />
            <br />
        <asp:Label runat="server" ID="CVClbl" CssClass="PTLabels label">CVC</asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Textbox2" ValidationExpression="^[0-9]$"></asp:RegularExpressionValidator>
        </div>  
        
        <div class="large-1 medium-1 small-5">            
        <asp:TextBox ID="cvctb" runat="server"></asp:TextBox>
        </div>
        <asp:Button runat="server" ID="avbrytbtn" Text="Avbryt" ValidationGroup="buttons"/>
        <asp:Button runat="server" ID="godkännbtn" Text="Godkänn" BackColor="GreenYellow" OnClick="BetalaBTN_Click" />
    </div>
        </div>
</asp:Content>
