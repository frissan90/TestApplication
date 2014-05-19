<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="RegistreringNY.aspx.cs" Inherits="PhoneToys.RegistreringNY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row collapse">

    <div class="large-12 medium-12 margin-btm" >

    </div>
</div>
    <div class="row bground" style="border: 1px solid; border-color:lime">
                    <div class="row-vanster">
                        <div class="large-12 medium-10 small-6">
        <asp:Image runat="server" ID="Vargbild" Imageurl="~/Images/vargen.png" /></div>
        </div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                

        
  <div class="row" style="margin-top:100px">
    <div class="large-2 medium-2 small-12 columns">
                              <div class="label PTLabels font1">Användarnamn</div>
        <asp:TextBox runat="server" ID="UnameTB" CssClass="textbox"></asp:TextBox><asp:Label runat="server" ID="UnameError" Visible="false"></asp:Label>
        

              </div>


<%--      <label style="color:darkred;">Användarnamn
        <input type="text" placeholder="" />
      </label>--%>

    <div class="large-2 medium-2 small-12 columns">
                              <div class="label PTLabels font1">Lösenord</div>
              <asp:TextBox runat="server" ID="PWTB" CssClass="textbox" TextMode="Password"></asp:TextBox><asp:Label runat="server" ID="PWError" Visible="false"></asp:Label>
</div>

    <div class="large-2 medium-2 small-12 columns">
                      <div class="label PTLabels font1">Bekräfta lösenord</div>
              <asp:TextBox runat="server" ID="CPWTB" CssClass="textbox" TextMode="Password"></asp:TextBox><asp:Label runat="server" ID="CPWError" Visible="false"></asp:Label>

    </div>

      <div class="large-2 medium-3 small-8 columns marginreg ">
                  <asp:Button runat="server" CssClass="regbtn" ID="Nextbtn" Text="Nästa" OnClick="Nextbtn_Click"/>
          </div>
  </div>
     
</asp:Content>


<%--<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="RegistreringNY.aspx.cs" Inherits="PhoneToys.RegistreringNY" %>
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
    <div class="row bground" style="border: 1px solid; border-color:lime">
                    <div class="row-vanster">
                        <div class="large-12 medium-10 small-6">
        <asp:Image runat="server" ID="Vargbild" Imageurl="~/Images/vargen.png" /></div>
        </div>

                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                
        
  <div class="row" style="margin-top:100px">
    <div class="large-2 medium-2 small-12 columns">
                              <div class="label PTLabels font1">Användarnamn</div>
        <asp:TextBox runat="server" ID="UnameTB" CssClass="textbox"></asp:TextBox>

              </div>


<%--      <label style="color:darkred;">Användarnamn
        <input type="text" placeholder="" />
      </label>

    <div class="large-2 medium-2 small-12 columns">
                              <div class="label PTLabels font1">Lösenord</div>
              <asp:TextBox runat="server" ID="PWTB" CssClass="textbox" TextMode="Password"></asp:TextBox>
</div>

    <div class="large-2 medium-2 small-12 columns">
                      <div class="label PTLabels font1">Bekräfta lösenord</div>
              <asp:TextBox runat="server" ID="CPWTB" CssClass="textbox" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" SetFocusOnError="true" ControlToCompare="PWTB" ControlToValidate="CPWTB"></asp:CompareValidator>

    </div>

      <div class="large-2 medium-2 small-12 columns">
                  <asp:Button runat="server" CssClass="round link button" BackColor="Red" ID="Nextbtn" Text="Nästa" OnClick="Nextbtn_Click"/>
          </div>
  </div>
     
        </div>
</asp:Content>--%>
