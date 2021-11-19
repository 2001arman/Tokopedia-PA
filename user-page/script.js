function myFunction() {
  
  var checkBox = document.getElementById("cek");
  var text = document.getElementById("alamat");
  if (checkBox.checked == true){
    $("#alamat").slideDown('slow');
  } else {
    $("#alamat").hide();
  }
}

    

