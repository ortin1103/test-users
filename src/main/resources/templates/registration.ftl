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
            <form autocomplete="off" action="#" action="registration.ftl"
                  object=${user} method="post" class="form-horizontal"
                  role="form">
                <h2>Registration Form</h2>
                <div class="form-group">
                    <div class="col-sm-9">
                        <label if=${fields.hasErrors('name')} errors="*{name}"
                               class="validation-message"></label>
                        <input type="text" field="*{name}" placeholder="Name"
                               class="form-control" />
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-9">
                        <label	if=${fields.hasErrors('lastName')} errors="*{lastName}"
                                  class="validation-message"></label>
                        <input type="text" field="*{lastName}"
                               placeholder="Last Name" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9">
                        <input type="text" field="*{email}" placeholder="Email"
                               class="form-control" /> <label
                            if=${fields.hasErrors('email')} th:errors="*{email}"
                            class="validation-message"></label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9">
                        <input type="password" field="*{password}"
                               placeholder="Password" class="form-control" /> <label
                            if=${fields.hasErrors('password')} errors="*{password}"
                            class="validation-message"></label>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-9">
                        <button type="submit" class="btn btn-primary btn-block">Register User</button>
                    </div>
                </div>

                <span utext=${successMessage}></span>


            </form>
        </div>
    </div>
</div>

</body>
</html>