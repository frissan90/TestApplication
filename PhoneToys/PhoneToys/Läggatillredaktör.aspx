<%@ Page Title="" Language="C#" MasterPageFile="~/RedaktorMaster.Master" AutoEventWireup="true" CodeBehind="Läggatillredaktör.aspx.cs" Inherits="PhoneToys.Läggatillredaktör" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    
   
    
     <div class="row">  
       <div class="large-6 small-12">                              
    
           <asp:TextBox ID="tbUsername" runat="server"></asp:TextBox>
    
           <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
    
           <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
    
           <asp:TextBox ID="tbConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
     
           <asp:TextBox ID="tbFirstname" runat="server"></asp:TextBox>   
     
           <asp:TextBox ID="tbLastname" runat="server"></asp:TextBox>   
         
           <asp:Button ID="btnLäggaRedaktör" runat="server" Text="Button" />             
   </div>
            </div>

</asp:Content>
