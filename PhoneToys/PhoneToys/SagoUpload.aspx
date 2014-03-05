<%@ Page Title="" Language="C#" MasterPageFile="~/Phonetoys.Master" AutoEventWireup="true" CodeBehind="SagoUpload.aspx.cs" Inherits="PhoneToys.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="topContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="Upload">
    <asp:Label ID="Label1" Text="Namn" runat="server" AssociatedControlID="NamnTB" ForeColor="Tomato"></asp:Label>
    <asp:TextBox ID="NamnTB" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" AssociatedControlID="besTB" Text="Beskrivning" ForeColor="Tomato"></asp:Label>
    <asp:TextBox runat="server" ID="besTB"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Längd" AssociatedControlID="LangdTB" ForeColor="Tomato"></asp:Label>
    <asp:TextBox runat="server" ID="LangdTB"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Pris" AssociatedControlID="PrisTB" ForeColor="Tomato"></asp:Label>
    <asp:TextBox runat="server" ID="PrisTB"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Välj fil" ForeColor="Tomato"></asp:Label>
    <asp:FileUpload runat="server" ID="minUpload" />
    </div>
    <br />
    <asp:Button runat="server" ID="UploadBTN" OnClick="UploadBTN_Click" Text="Ladda Upp"/>
    <br />
        <br />

    <div>
        <asp:DataGrid runat="server" ID="sagoGrid" AutoGenerateColumns="true">
            <Columns>
                <asp:BoundColumn DataField="Namn"></asp:BoundColumn>
                <asp:BoundColumn DataField="Langd"></asp:BoundColumn>
                <asp:BoundColumn DataField="Pris"></asp:BoundColumn>
                <asp:ButtonColumn ButtonType="LinkButton" Text="Redigera"></asp:ButtonColumn>
                <asp:ButtonColumn ButtonType="LinkButton" Text="Ta bort"></asp:ButtonColumn>
            </Columns>
        </asp:DataGrid>
    </div>

</asp:Content>
