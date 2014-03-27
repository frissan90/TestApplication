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
  <area title="Logga In" alt="Logga in" shape="poly" coords="769, 95, 759, 96, 744, 96, 732, 104, 721, 113, 711, 121, 710, 129, 709, 141, 716, 155, 723, 161, 731, 164, 735, 173, 753, 175, 776, 179, 783, 180, 804, 174, 808, 180, 801, 179, 826, 179, 838, 191, 854, 198, 803, 195, 771, 209, 778, 226, 778, 231, 813, 237, 814, 245, 789, 242, 784, 244, 799, 249, 799, 251, 783, 247, 774, 244, 766, 226, 753, 222, 746, 227, 741, 233, 734, 246, 738, 253, 744, 259, 748, 267, 751, 279, 750, 294, 741, 314, 728, 314, 716, 313, 708, 314, 704, 323, 699, 336, 702, 342, 705, 352, 718, 347, 724, 354, 733, 359, 749, 359, 768, 357, 781, 340, 774, 327, 783, 314, 789, 302, 803, 306, 806, 310, 808, 315, 818, 325, 820, 335, 836, 347, 857, 353, 879, 356, 896, 350, 905, 352, 923, 359, 934, 363, 952, 365, 967, 364, 984, 359, 997, 343, 973, 336, 955, 318, 951, 300, 947, 284, 932, 252, 942, 246, 949, 233, 966, 222, 969, 205, 966, 184, 980, 180, 987, 169, 986, 159, 982, 142, 973, 129, 982, 109, 986, 95, 970, 84, 943, 71, 916, 76, 900, 96, 909, 111, 888, 122, 877, 151, 873, 126, 862, 118, 860, 110, 846, 109, 831, 101, 817, 98, 807, 95, 795, 94, 780, 92" href="#" />
</map>
        </div>
    
    
</asp:Content>
