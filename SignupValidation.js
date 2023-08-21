function validateForm() {
            var name = document.forms["form"]["name"].value;
            var email = document.forms["form"]["email"].value;
            var password = document.forms["form"]["password"].value;

            if (name === "" || email === "" || password === "") {
                alert("All fields are required");
                return false;
            }

            var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
            if (!email.match(emailPattern)) {
                alert("Please enter a valid email address");
                return false;
            }
        }