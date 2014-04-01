var size = 2;

var id = 0;

function ProgressBar() {



    if (document.getElementById('<%=ImageFile.ClientID %>').value != "") {

        document.getElementById("divProgress").style.display = "block";

        document.getElementById("divUpload").style.display = "block";

        id = setInterval("progress()", 20);

        return true;

    }

    else {

        alert("Select a file to upload");

        return false;

    }

}

function progress() {

    size = size + 1;

    if (size > 299) {

        clearTimeout(id);

    }

    document.getElementById("divProgress").style.width = size + "pt";

    document.getElementById("<%=lblPercentage.ClientID %>").firstChild.data = parseInt(size / 3) + "%";

}