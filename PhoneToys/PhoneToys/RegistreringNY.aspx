<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="RegistreringNY.aspx.cs" Inherits="PhoneToys.RegistreringNY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row collapse">

    <div class="large-12 medium-12" >
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />


    </div>
</div>
    <div class="row">
                    <div class="row-vanster">
                        <div class="large-12 medium-10 small-6">
        <asp:Image runat="server" ID="Vargbild" Imageurl="Images/vargen.png" /></div>
        </div>

                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                
        
  <div class="row">
    <div class="large-2 medium-2 small-12 columns">
                              <div class="label PTLabels">Användarnamn</div>
              <asp:TextBox ID="UnameTB" runat="server"></asp:TextBox>    </div>
<%--      <label style="color:darkred;">Användarnamn
        <input type="text" placeholder="" />
      </label>--%>

    <div class="large-2 medium-2 small-12 columns">
                              <div class="label PTLabels">E-post</div>
              <asp:TextBox ID="EmailTB" runat="server"></asp:TextBox>
    </div>


          <div class="large-2 medium-2 small-12 columns">
              <div class="label PTLabels">Lösenord</div>
              <asp:TextBox ID="PWTB" runat="server"></asp:TextBox>

    </div>
    <div class="large-2 medium-2 small-12 columns">
                      <div class="label PTLabels">Bekräfta lösenord</div>
              <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

    </div>

      <div class="large-2 medium-2 small-12 columns">
                  <asp:Button runat="server" CssClass="round link" BackColor="Red" ID="Nextbtn" Text="Nästa" OnClick="Nextbtn_Click"/>
          </div>
  </div>
     
        </div>
</asp:Content>
