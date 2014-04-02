<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="RegisterEllerLogin.aspx.cs" Inherits="PhoneToys.RegisterEllerLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

    <style>
        div {
            width: 100%;
        }

        img[usemap] {
            border: none;
            height: auto;
            max-width: 100%;
            width: auto;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">


    <%--    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Shellman.png" BackColor="Transparent" BorderWidth="0" Height="341px" Width="421px" />
    <asp:ImageButton runat="server" ImageUrl="~/Images/vargen.png" BackColor="Transparent" BorderWidth="0" Height="423px" Width="401px" />--%>
    <%--<div class="row">
    <div class="skalman">
    <asp:Image runat="server" ImageUrl="~/Images/Shellman.png" />
        </div>
    <div class="lilleskutt">
    <asp:Image runat="server" ImageUrl="~/Images/vargen.png" />
    </div>
        </div>--%>
    <div class="row">

        <img src="Images/NyStartbild.png" usemap="#Map" />

        <map name="Map" id="Map">
            <area alt="Start" shape="poly" coords="630,22,592,30,555,43,523,65,502,95,492,114,492,148,500,165,468,166,454,170,435,174,423,186,402,179,378,184,362,197,356,210,349,221,330,228,314,239,308,254,301,273,289,281,278,290,274,304,269,320,273,326,279,331,291,342,308,350,325,353,334,360,320,368,328,374,338,386,353,392,363,389,347,405,335,420,315,426,300,432,302,444,313,449,302,459,311,464,324,466,335,463,343,476,358,476,375,460,379,470,375,486,362,492,357,505,350,525,365,540,396,547,420,551,445,543,465,532,481,517,496,512,510,509,522,501,563,523,608,538,637,548,654,537,673,524,698,515,738,491,770,474,803,456,832,436,861,419,872,404,855,387,833,376,803,363,775,345,753,331,724,318,697,300,673,284,646,268,662,245,697,243,734,236,756,234,785,225,806,216,830,198,849,181,860,160,860,136,865,108,858,85,844,76,835,60,815,48,796,39,766,26,744,21,711,14,664,17" href="Testakoppling" />
        </map>


    </div>
    <script src="js/ResponsiveImgMap.js"></script>
    <script src="js/Jquery.js"></script>
    <script>
        $(document).ready(function (e) {
            $('img[usemap]').rwdImageMaps();
        });
    </script>
</asp:Content>
