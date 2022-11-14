const user = document.querySelector('.sign-success-img img')
const user_modal = document.querySelector('.sign-success-container')
user.addEventListener('click', ()=>{
    user_modal.classList.toggle('disable-user')
})
console.log(user);
