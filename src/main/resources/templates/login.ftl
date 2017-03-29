</head>

<body>
<form action="/registration" method="get">
    <button  type="Submit">Go To Registration Page</button>
</form>

<div class="container">

    <form action="/login" method="POST" class="form-signin">
        <h3 class="form-signin-heading" text="Welcome"></h3>
        <br/>

        <input type="text" id="email" name="email"  placeholder="Email"
               class="form-control" /> <br/>
        <input type="password"  placeholder="Password"
               id="password" name="password" class="form-control" /> <br />

        <button name="Submit" value="Login" type="Submit" text="Login"></button>
    </form>
</div>
</body>
</html>