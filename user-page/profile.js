// Modal Nama
// Get the modal
var modalNama = document.getElementById("modalNama");

// Get the button that opens the modal
var btnNama = document.getElementById("btnNama");

// Get the <span> element that closes the modal
var span = document.getElementById("closeNama");

// When the user clicks on the button, open the modal
btnNama.onclick = function () {
  modalNama.style.display = "block";
};

// When the user clicks on <span> (x), close the modal
span.onclick = function () {
  modalNama.style.display = "none";
};

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
  if (event.target == modalNama) {
    modalNama.style.display = "none";
  }
};

// Modal Alamat
// Get the modal
var modalAlamat = document.getElementById("modalAlamat");

// Get the button that opens the modal
var btnAlamat = document.getElementById("btnAlamat");

// Get the <span> element that closes the modal
var span = document.getElementById("closeAlamat");

// When the user clicks on the button, open the modal
btnAlamat.onclick = function () {
  modalAlamat.style.display = "block";
};

// When the user clicks on <span> (x), close the modal
span.onclick = function () {
  modalAlamat.style.display = "none";
};

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
  if (event.target == modalAlamat) {
    modalAlamat.style.display = "none";
  }
};

// Modal HP
// Get the modal
var modalHP = document.getElementById("modalHP");

// Get the button that opens the modal
var btnHP = document.getElementById("btnHP");

// Get the <span> element that closes the modal
var span = document.getElementById("closeHP");

// When the user clicks on the button, open the modal
btnHP.onclick = function () {
  modalHP.style.display = "block";
};

// When the user clicks on <span> (x), close the modal
span.onclick = function () {
  modalHP.style.display = "none";
};

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
  if (event.target == modalHP) {
    modalHP.style.display = "none";
  }
};

// Modal Password
// Get the modal
var modalPassword = document.getElementById("modalPassword");

// Get the button that opens the modal
var btnPassword = document.getElementById("btnPassword");

// Get the <span> element that closes the modal
var span = document.getElementById("closePassword");

// When the user clicks on the button, open the modal
btnPassword.onclick = function () {
  modalPassword.style.display = "block";
};

// When the user clicks on <span> (x), close the modal
span.onclick = function () {
  modalPassword.style.display = "none";
};

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
  if (event.target == modalPassword) {
    modalPassword.style.display = "none";
  }
};