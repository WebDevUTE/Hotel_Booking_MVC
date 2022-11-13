let email = document.getElementById("email");
let password = document.getElementById("password");
let formlg = document.querySelector('form');

// Show input error message
function showError(input, message) {
    const formControl = input.parentElement
    formControl.className = 'form-control error'
    const small = formControl.querySelector('small')
    small.innerText = message
}

// Show success outline
function showSuccess(input) {
    const formControl = input.parentElement;
    formControl.className = 'form-control success'
    const small = formControl.querySelector('small')
    small.innerText = '';
}

// Check email is valid
function checkEmail(input) {
	const re =
		/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/

	if (re.test(input.value.trim())) {
		showSuccess(input)
	} else {
		showError(input, 'Please enter a valid email address!')
	}
}

// Check required fields
function checkRequired(inputArr) {
    let isRequired = false
    inputArr.forEach(function (input) {
        if (input.value.trim() === '') {
            showError(input, 'This field is required!')
			isRequired = true
		} else {
			showSuccess(input)
		}
    })

    return isRequired
}

// Check input length
function checkLength(input, min) {
	if (input.value.length < min) {
		showError(
			input, 'Must be at least 6 characters'
		)
	} 
	else {
		showSuccess(input)
	}
}
// Event listeners
formlg.addEventListener('submit', function (e) {
	//e.preventDefault()

	if (!checkRequired([email, password])) {
		checkLength(password, 6)
		checkEmail(email)
	}
})