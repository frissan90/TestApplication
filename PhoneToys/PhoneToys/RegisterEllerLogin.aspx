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
        <%--    <asp:Image runat="server" ImageUrl="~/Images/startPageIMG.png"  />--%>
        
        <img src="Images/startPageIMG.png" usemap="#Map"/>
        <map style="border: 1px solid black" name="Map" id="Map">
            <area title="Registrera" alt="Registrera" shape="poly" coords="303, 50, 290, 64, 277, 77, 277, 98, 286, 121, 294, 138, 298, 149, 315, 150, 310, 161, 292, 201, 279, 137, 287, 123, 205, 135, 194, 154, 194, 145, 191, 162, 176, 167, 167, 181, 161, 194, 145, 214, 139, 226, 145, 242, 157, 255, 177, 258, 179, 275, 194, 286, 175, 309, 156, 322, 168, 343, 193, 347, 202, 341, 214, 336, 197, 363, 196, 387, 216, 403, 246, 398, 262, 378, 281, 377, 298, 361, 273, 339, 283, 302, 281, 288, 285, 281, 308, 270, 303, 270, 297, 270, 292, 270, 294, 263, 296, 257, 299, 250, 299, 242, 300, 233, 302, 227, 311, 222, 321, 220, 329, 217, 338, 209, 340, 202, 335, 200, 325, 197, 320, 194, 300, 204, 313, 186, 321, 189, 326, 190, 332, 185, 340, 177, 357, 172, 369, 174, 383, 177, 395, 178, 409, 177, 433, 173, 453, 166, 467, 154, 481, 148, 492, 138, 500, 112, 503, 90, 501, 74, 491, 56, 480, 43, 468, 33, 455, 26, 433, 21, 418, 20, 396, 18, 372, 20, 346, 23, 322, 35" href="Register" />
            <area title="Logga In" alt="Logga in" shape="poly" coords="932, 124, 922, 125, 907, 125, 895, 133, 884, 142, 874, 150, 873, 158, 872, 170, 879, 184, 886, 190, 894, 193, 898, 202, 916, 204, 939, 208, 946, 209, 967, 203, 971, 209, 964, 208, 989, 208, 1001, 220, 1017, 227, 966, 224, 934, 238, 941, 255, 941, 260, 976, 266, 977, 274, 952, 271, 947, 273, 962, 278, 962, 280, 946, 276, 937, 273, 929, 255, 916, 251, 909, 256, 904, 262, 897, 275, 901, 282, 907, 288, 911, 296, 914, 308, 913, 323, 904, 343, 891, 343, 879, 342, 871, 343, 867, 352, 862, 365, 865, 371, 868, 381, 881, 376, 887, 383, 896, 388, 912, 388, 931, 386, 944, 369, 937, 356, 946, 343, 952, 331, 966, 335, 969, 339, 971, 344, 981, 354, 983, 364, 999, 376, 1020, 382, 1042, 385, 1059, 379, 1068, 381, 1086, 388, 1097, 392, 1115, 394, 1130, 393, 1147, 388, 1160, 372, 1136, 365, 1118, 347, 1114, 329, 1110, 313, 1095, 281, 1105, 275, 1112, 262, 1129, 251, 1132, 234, 1129, 213, 1143, 209, 1150, 198, 1149, 188, 1145, 171, 1136, 158, 1145, 138, 1149, 124, 1133, 113, 1106, 100, 1079, 105, 1063, 125, 1072, 140, 1051, 151, 1040, 180, 1036, 155, 1025, 147, 1023, 139, 1009, 138, 994, 130, 980, 127, 970, 124, 958, 123, 943, 121" href="#" />
        </map>
        <%--<asp:Button runat="server" Text="Logga in" CssClass="button round tiny knapp" />--%>
            
    </div>
    <script src="js/ResponsiveImgMap.js"></script>
    <script src="js/Jquery.js"></script>
    <script>
        $(document).ready(function (e) {
            $('img[usemap]').rwdImageMaps();
            $('area').on('click', function () {
                alert($(this).attr('alt') + ' clicked');
            });
        });
    </script>
</asp:Content>
