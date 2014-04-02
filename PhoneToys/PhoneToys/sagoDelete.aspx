<%@ Page Title="" Language="C#" MasterPageFile="~/RedaktorMaster.Master" AutoEventWireup="true" CodeBehind="sagoDelete.aspx.cs" Inherits="PhoneToys.sagoDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="row large-12 medium-8 small-8">
            
            <asp:UpdatePanel runat="server" ID="sagoPanel">
                <ContentTemplate>
                    
                    <asp:Repeater runat="server" ID="sagoGrid" OnItemCommand="sagoGrid_ItemCommand"> 
                        <HeaderTemplate>
                            <table border="0" width="100%">
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
                                <td>
                                    <asp:Label runat="server" ID="namn" Text='<%#Eval("Namn") %>'></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="TextBox1" CssClass="descriptionTB" runat="server" TextMode="MultiLine" Enabled="false" Text='<%#Eval("Beskrivning") %>'></asp:TextBox></td>
                                <td><%#Eval("Pris") %></td>
                               
                                <td class="uploadSagaRemoveBTN">
                                    <asp:LinkButton ID="LinkButton2" CssClass="uploadSagaRemoveBTN button radius" CommandName="remove" runat="server" Text="Ta bort"></asp:LinkButton></td>
                            </tr>
                        </ItemTemplate>
                        <SeparatorTemplate>
                            <tr>
                                <td colspan="0">
                                    <hr />
                                </td>
                            </tr>
                        </SeparatorTemplate>
                        <FooterTemplate></table></FooterTemplate>
                    </asp:Repeater>
                </ContentTemplate>
                <%--<Triggers>
                <asp:AsyncPostBackTrigger ControlID="sagoPanel" />
            </Triggers>--%>
            </asp:UpdatePanel>
    </div>
</asp:Content>
