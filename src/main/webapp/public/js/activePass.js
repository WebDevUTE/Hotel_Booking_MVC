const hide_Pass = document.querySelectorAll(".label-pass");
const eye_Open = document.querySelectorAll(".eye-open");
const eye_Close = document.querySelectorAll(".eye-close");

for(let i = 0; i < eye_Open.length; i++) {
    eye_Open[i].onclick = function() {
        eye_Open[i].classList.add("hidden");
        eye_Close[i].classList.remove("hidden");
        hide_Pass[i].setAttribute("type", "password");
    }
}

for(let i = 0; i < eye_Open.length; i++) {
    eye_Close[i].onclick = function() {
        eye_Open[i].classList.remove("hidden");
        eye_Close[i].classList.add("hidden");
        hide_Pass[i].setAttribute("type", "text");
    }
}