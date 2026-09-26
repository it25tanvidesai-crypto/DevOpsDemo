<!DOCTYPE html>
<html>
<head>
    <title>DevOps Demo</title>
</head>

<body>

    <h1>DevOps Pipeline Demo</h1>

    <p>Welcome to my Java Web Application!</p>

    <input type="text" id="name" placeholder="Enter your name">

    <button onclick="showMessage()">Submit</button>

    <p id="message"></p>

    <script>
        function showMessage() {
            let name = document.getElementById("name").value;

            document.getElementById("message").innerHTML =
                "Hello " + name + "!";
        }
    </script>

</body>
</html>