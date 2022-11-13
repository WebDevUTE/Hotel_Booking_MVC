const showFilter = document.querySelectorAll('.btn-show');
const modal = document.querySelectorAll('.modal');
const resetBtn = document.querySelector('.btn-reset')
const convenientArray = document.querySelectorAll('.convenient')
const typeOfHotelArray = document.querySelectorAll('.type-of-place')
let modalFlag = 0
let countConvenient = 0
let countTypeOfHotel = 0

const user = document.querySelector('.sign-success-img img')
const user_modal = document.querySelector('.sign-success-container')
user.addEventListener('click', ()=>{
    user_modal.classList.toggle('disable-user')
})
console.log(user);


function showModal(){
    for(let i = 0;i<showFilter.length;i++){
        showFilter[i].addEventListener('click',function(){
           modal[i].classList.toggle('open-modal')
           for(let j = 0;j<modal.length;j++){
                if(i!==j){
                    modal[j].classList.remove('open-modal')
                }
           }
        })
    }
}

function reset(){
    resetBtn.addEventListener('click', function(){
        for(let i = 0;i<showFilter.length;i++){
           if(modal[i].className.includes('open-modal')){
                modal[i].classList.remove('open-modal')
           }
        }
        document.getElementById('number-chooseType').innerHTML = ``
        document.getElementById('number-chooseConvi').innerHTML = ``
    })
}

function CountConvenient(){
    for(let i = 0;i<convenientArray.length;i++){
        convenientArray[i].addEventListener('click',function(){
            if(this.checked===true){
                countConvenient++
            }
            else{
                countConvenient--
            }

            if(countConvenient===0){
                document.getElementById('number-chooseConvi').innerHTML = ``
            }
            else{
                document.getElementById('number-chooseConvi').innerHTML = `: ${countConvenient}`
            }
        })
    }
}
function CountTypeOfHotel(){
    for(let i = 0;i<typeOfHotelArray.length;i++){
        typeOfHotelArray[i].addEventListener('click',function(){
            if(this.checked===true){
                countTypeOfHotel++
            }
            else{
                countTypeOfHotel--
            }

            if(countTypeOfHotel===0){
                document.getElementById('number-chooseType').innerHTML = ``
            }
            else{
                document.getElementById('number-chooseType').innerHTML = `: ${countTypeOfHotel}`
            }
        })
    }
}
showModal()
reset()
CountConvenient()
CountTypeOfHotel()

