<!DOCTYPE html>
<html>
<head>
    <title>Registration Form</title>
</head>
<body>
<form action="/" method="get">
    <button type="Submit">Go To Login Page</button>
</form>

<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <form autocomplete="off" action="/registration"
                  method="post" class="form-horizontal">
                <h2>Registration Form</h2>
                <div class="form-group">
                    <div class="col-sm-9">
                        <label class="validation-message"></label>
                        <input type="text" name="name" placeholder="Name"
                               class="form-control" />
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-9">
                        <label class="validation-message"></label>
                        <input type="text" name="lastName" "
                               placeholder="Last Name" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9">
                        <input type="text" name="email" placeholder="Email"
                               class="form-control" /> <label
                            class="validation-message"></label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9">
                        <input type="text" name="password"
                               placeholder="Password" class="form-control" /> <label
                            class="validation-message"></label>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-9">
                        <button type="submit" class="btn btn-primary btn-block">Register User</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>