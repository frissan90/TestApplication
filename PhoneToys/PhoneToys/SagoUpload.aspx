<%@ Page Title="" Language="C#" MasterPageFile="~/Phonetoys.Master" AutoEventWireup="true" CodeBehind="SagoUpload.aspx.cs" Inherits="PhoneToys.WebForm2" %>
<%@ Import Namespace="System.Data" %>
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
        <asp:Repeater runat="server" ID="sagoGrid" OnItemCommand="sagoGrid_ItemCommand">
            <HeaderTemplate>
                <table border="0" width="50%">
                    <tr>
                        <th align="left">Titel</th>
                        <th align="left">Beskrivning</th>
                        <th align="left">Pris</th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                        <%--<%#Container.DataItem("Namn")%>
                        <%#Container.DataItem("Beskrivning") %>
                        <%#Container.DataItem("Namn") %>--%>
                        <td><%#Eval("Namn") %></td>
                        <td><%#Eval("Beskrivning") %></td>
                        <td><%#Eval("Pris") %></td>
                        <td><asp:LinkButton runat="server" Text="Redigera"></asp:LinkButton></td>
                        <td><asp:LinkButton runat="server" Text="Ta bort"></asp:LinkButton></td>
                </tr>
            </ItemTemplate>
            <SeparatorTemplate>
                <tr>
                    <td colspan="0"><hr /></td>
                </tr>
            </SeparatorTemplate>
            <FooterTemplate></table></FooterTemplate>
        </asp:Repeater>
        <%--<asp:GridView runat="server" ID="sagoGrid" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="Namn"></asp:BoundField>
                <asp:BoundField DataField="Langd"></asp:BoundField>
                <asp:BoundField DataField="Pris"></asp:BoundField>
                <asp:ButtonField ButtonType="Link" Text="Redigera"></asp:ButtonField>
                <asp:ButtonField ButtonType="Link" Text="Ta bort"></asp:ButtonField>
            </Columns>
        </asp:GridView>--%>
    </div>

</asp:Content>
