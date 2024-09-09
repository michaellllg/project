const form = document.querySelector("#login-form");
const eField = form.querySelector(".email"),
      eInput = eField.querySelector("input"),
      pField = form.querySelector(".password"),
      pInput = pField.querySelector("input");

// Event listener for email input field
eInput.addEventListener('input', () => {
    hideErrorMessage();
});

// Event listener for password input field
pInput.addEventListener('input', () => {
    hideErrorMessage();
});

form.onsubmit = async (e) => {
    e.preventDefault(); // Prevent form submission

    // Reset error message and classes
    eField.classList.remove("error");
    const errorTxt = eField.querySelector(".error-txt");
    errorTxt.innerText = ""; // Reset error message

    // if email and password are blank, add shake class; otherwise, call specified function
    (eInput.value == "") ? eField.classList.add("shake", "error") : checkEmail();
    (pInput.value == "") ? pField.classList.add("shake", "error") : checkPass();

    setTimeout(() => { // Remove shake class after 500ms
        eField.classList.remove("shake");
        pField.classList.remove("shake");
    }, 500);

    // Function to check email validity
    function checkEmail() {
        let pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/; // Pattern for email validation
        if (!eInput.value.match(pattern)) { // If pattern not matched, add error class and show error message
            eField.classList.add("error");
            eField.classList.remove("valid");
            errorTxt.innerText = "Enter a valid email address";
        } else { // If pattern matched, remove error class and add valid class
            eField.classList.remove("error");
            eField.classList.add("valid");
        }
    }

    // Function to check password validity
    function checkPass() {
        if (pInput.value == "") { // If password is empty, add error class
            pField.classList.add("error");
            pField.classList.remove("valid");
        } else { // If password is not empty, remove error class and add valid class
            pField.classList.remove("error");
            pField.classList.add("valid");
        }
    }

    // If email and password fields don't contain error class, user filled details properly
    if (!eField.classList.contains("error") && !pField.classList.contains("error")) {
        const formData = new FormData();
        formData.append('email', eInput.value);
        formData.append('password', pInput.value);

        try {
            const response = await fetch('php/login.php', {
                method: 'POST',
                body: formData
            });

            const data = await response.json();

            if (data.success) {
                if (data.role === 'Admin') {
                    // Authentication successful for admin, redirect to admin dashboard
                    const memberID = data.memberID;
                    const dashboardURL = `/cjc0/Dashboard.html?memberID=${memberID}`;
                    window.location.href = dashboardURL;
                } else {
                    // Authentication successful for member or visitor, redirect to member dashboard
                    window.location.href = '/cjc0/memberDash.html';
                }
            } else {
                // Authentication failed, display specific error message
                if (data.error === "Unauthorized access") {
                    errorTxt.innerText = "Unauthorized access";
                } else {
                    errorTxt.innerText = "Wrong email or password";
                }
                eField.classList.add("error");
            }
        } catch (error) {
            console.error("Error:", error);
            // Handle other errors, such as network issues
        }
    }
};





// Function to hide error message
function hideErrorMessage() {
    eField.classList.remove("error");
    const errorTxt = eField.querySelector(".error-txt");
    errorTxt.innerText = ""; // Reset error message
}
