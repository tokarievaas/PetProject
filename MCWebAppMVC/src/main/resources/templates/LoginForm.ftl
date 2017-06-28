<!DOCTYPE html>
<html>

<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/loginFormStyle.css">

<body>
<div  id = "container">
	<div class = "page-header">
		<h1>Please, enter your login<h1>
	</div>
	<font color="red">
        ${error!}
    </font>
	<form action = "/media_coll/login" method = "post">
	  <div class="form-group">
		<label for="login">Login:</label>
		<input type="text" class="form-control" id="login" name="username">
	  </div>
	  <div class="form-group">
		<label for="pwd">Password:</label>
		<input type="password" class="form-control" id="pwd" name="password">
	  </div>
<!-- 	  <div class="checkbox">
		<label><input type="checkbox"> Remember me</label>
	  </div> -->
	  <button type="submit" class="btn btn-default">Submit</button>
	</form>

	<div>
	    <a href = "/media_main/newUser">
		    <button class="btn btn-default" id = "newUser">Register</button>
		</a>
	</div>

	<a href = "/media_main">
        <button class="btn btn-default" id = "Cancel">Cancel</button>
	</a>
</div>
</body>
</html>