//slide auto
var counter = 1
setInterval(function(){
    document.getElementById('radio' + counter).checked = true
    counter++
    if(counter>3){
        counter=1
    }
},3000)

const user = document.querySelector('.sign-success-img img')
const user_modal = document.querySelector('.sign-success-container')
user.addEventListener('click', ()=>{
    user_modal.classList.toggle('disable-user')
})
console.log(user);