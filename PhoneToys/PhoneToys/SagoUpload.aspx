<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SagoUpload.aspx.cs" Inherits="PhoneToys.SagoUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label Text="Namn" runat="server" AssociatedControlID="NamnTB" ForeColor="Tomato"></asp:Label>
    <asp:TextBox ID="NamnTB" runat="server"></asp:TextBox>
    <br />
    <asp:Label runat="server" AssociatedControlID="besTB" Text="Beskrivning" ForeColor="Tomato"></asp:Label>
    <asp:TextBox runat="server" ID="besTB"></asp:TextBox>
    <br />
    <asp:Label runat="server" Text="Längd" AssociatedControlID="LangdTB" ForeColor="Tomato"></asp:Label>
    <asp:TextBox runat="server" ID="LangdTB"></asp:TextBox>
    <br />
    <asp:Label runat="server" Text="Pris" AssociatedControlID="PrisTB" ForeColor="Tomato"></asp:Label>
    <asp:TextBox runat="server" ID="PrisTB"></asp:TextBox>
    <br />
    <asp:Label runat="server" Text="Välj fil" ForeColor="Tomato"></asp:Label>
    <asp:FileUpload runat="server" ID="minUpload" />
    </div>
    <br />
    <asp:Button runat="server" ID="UploadBTN" OnClick="UploadBTN_Click" Text="Ladda Upp"/>
    <br />
        <br />

         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" RowStyle-BackColor="#A1DCF2" Font-Names = "Arial" Font-Size = "10pt" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White">
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="FileName" />
        <asp:TemplateField>
            <itemtemplate>
                <object type="application/x-shockwave-flash" data='<%Eval("ID"); %>'
                    width="240" height="20" id="dewplayer">
                    <param name="wmode" value="transparent" />
                    <%--<param name="movie" value='dewplayer-vol.swf?mp3=File.ashx?Id=<%# Eval("Id") %>'/>--%>
                <object>
           </itemtemplate>
           
        </asp:TemplateField>
    </Columns>
</asp:GridView>
    </form>
</body>
</html>
