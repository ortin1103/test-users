<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>Table</title>
</head>
<body>
<table border="1">
    <caption>Table</caption>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Soname</th>
        <th>Age</th>
        <th>Email</th>
        <th>Phone</th>
    </tr>
<#list user as users>
    <tr>
        <th>${users.id}</th>
        <th>${users.firstName}</th>
        <th>${users.secondName}</th>
        <th>${users.age}</th>
        <th>${users.email}</th>
        <th>${users.phone}</th>
    </tr>
</#list>

</table>
</body>
</html>