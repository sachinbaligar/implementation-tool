function uploadFile() {
    var form = document.getElementById("manage_vendor");
    var formData = new FormData(form);

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "upload1.php", true);

    xhr.onload = function () {
        if (xhr.status === 200) {
            document.getElementById("response").innerHTML = xhr.responseText;
        } else {
            document.getElementById("response").innerHTML = "Error uploading file.";
        }
    };

    xhr.send(formData);
}
