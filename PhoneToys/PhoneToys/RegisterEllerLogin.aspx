<%@ Page Title="" Language="C#" MasterPageFile="~/PhoneToysFinal.Master" AutoEventWireup="true" CodeBehind="RegisterEllerLogin.aspx.cs" Inherits="PhoneToys.RegisterEllerLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <script src="js/ResponsiveImgMap.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/ecmascript">
        $(document).ready(function (e) {
            $('img[usemap]').rwdImageMaps();
            //$('area').on('click', function () {
            //    alert($(this).attr('alt') + ' clicked');
            //});
            
        });
    </script>
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
<%--    <asp:Image runat="server" ImageUrl="~/Images/startPageIMG.png"  />--%>
        <img src="Images/startPageIMG.png" usemap="#Map" style="border:1px solid black" />
        <map style="border: 1px solid black" name="Map" id="Map">
  <area title="Registrera" alt="Registrera" shape="poly" coords="264, 36, 251, 50, 238, 63, 238, 84, 247, 107, 255, 124, 259, 135, 276, 136, 271, 147, 253, 187, 240, 123, 248, 109, 166, 121, 155, 140, 155, 131, 152, 148, 137, 153, 128, 167, 122, 180, 106, 200, 100, 212, 106, 228, 118, 241, 138, 244, 140, 261, 155, 272, 136, 295, 117, 308, 129, 329, 154, 333, 163, 327, 175, 322, 158, 349, 157, 373, 177, 389, 207, 384, 223, 364, 242, 363, 259, 347, 234, 325, 244, 288, 242, 274, 246, 267, 269, 256, 264, 256, 258, 256, 253, 256, 255, 249, 257, 243, 260, 236, 260, 228, 261, 219, 263, 213, 272, 208, 282, 206, 290, 203, 299, 195, 301, 188, 296, 186, 286, 183, 281, 180, 261, 190, 274, 172, 282, 175, 287, 176, 293, 171, 301, 163, 318, 158, 330, 160, 344, 163, 356, 164, 370, 163, 394, 159, 414, 152, 428, 140, 442, 134, 453, 124, 461, 98, 464, 76, 462, 60, 452, 42, 441, 29, 429, 19, 416, 12, 394, 7, 379, 6, 357, 4, 333, 6, 307, 9, 283, 21" href="Register" />
  <area title="Logga In" alt="Logga in" shape="poly" coords="789, 54, 779, 55, 764, 55, 752, 63, 741, 72, 731, 80, 730, 88, 729, 100, 736, 114, 743, 120, 751, 123, 755, 132, 773, 134, 796, 138, 803, 139, 824, 133, 828, 139, 821, 138, 846, 138, 858, 150, 874, 157, 823, 154, 791, 168, 798, 185, 798, 190, 833, 196, 834, 204, 809, 201, 804, 203, 819, 208, 819, 210, 803, 206, 794, 203, 786, 185, 773, 181, 766, 186, 761, 192, 754, 205, 758, 212, 764, 218, 768, 226, 771, 238, 770, 253, 761, 273, 748, 273, 736, 272, 728, 273, 724, 282, 719, 295, 722, 301, 725, 311, 738, 306, 744, 313, 753, 318, 769, 318, 788, 316, 801, 299, 794, 286, 803, 273, 809, 261, 823, 265, 826, 269, 828, 274, 838, 284, 840, 294, 856, 306, 877, 312, 899, 315, 916, 309, 925, 311, 943, 318, 954, 322, 972, 324, 987, 323, 1004, 318, 1017, 302, 993, 295, 975, 277, 971, 259, 967, 243, 952, 211, 962, 205, 969, 192, 986, 181, 989, 164, 986, 143, 1000, 139, 1007, 128, 1006, 118, 1002, 101, 993, 88, 1002, 68, 1006, 54, 990, 43, 963, 30, 936, 35, 920, 55, 929, 70, 908, 81, 897, 110, 893, 85, 882, 77, 880, 69, 866, 68, 851, 60, 837, 57, 827, 54, 815, 53, 800, 51" href="#" />
</map>
        </div>
    
    
</asp:Content>
