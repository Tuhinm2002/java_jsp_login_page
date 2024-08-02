<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</head>
<body>

<form action="Login" method="post">
<div class="form-floating mb-3 w-25">
  <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com" name="uname">
  <label for="floatingInput">Email address</label>
</div>
<div class="form-floating w-25">
  <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="passw">
  <label for="floatingPassword">Password</label>
</div>
<input type="submit" value="login">
</form>

</body>
</html>