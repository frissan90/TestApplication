function orderConfirm() {
    var r = confirm("Are you sure that you want to confirm your order??");
    if (r == true) {
        return true;
    }
    else {
        return false;
    }
}