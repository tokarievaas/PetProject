<!DOCTYPE html>
<#import "/spring.ftl" as spring/>
<html>

<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/newUserFormStyle.css">

<body>
<div  id = "container">
	<div class = "page-header">
		<h1>Please, enter your information<h1>
	</div>

	<form action = "/media_main/newUser" method = "post">
	  <div class="form-group">

	  		<@spring.bind "userForm.*"/>

      		<#if spring.status.error>
                <b> <font color = "red">There were problems with the data you entered:  </font>  </b><br>

                <#list spring.status.errorMessages as error>
                    <font color = "red">${error} </font>  <br>
                </#list>


            </#if>

		<label for="login">Enter your new login (should be between 6 and 32 characters): *</label>
		<input type="text" name = "login" class="form-control" id="login">
	  </div>
	  <div class="form-group">
		<label for="pwd">Enter your new password (should be at least 8 characters): *</label>
		<input type="password" name = "password" class="form-control" id="pwd">
	  </div>

	  <div class="form-group">
		<label for="name">Enter your name (optional):</label>
		<input type="text" name = "name" class="form-control" id="name">
	  </div>

	  <div class="form-group">
		<label for="email">Enter your e-mail (optional):</label>
		<input type="email" name = "email" class="form-control" id="email">
	  </div>

	  <button type="submit" class="btn btn-default">Submit</button>
	</form>

	<a href = "/media_main">
		<div>
			<button class="btn btn-default" id = "cancelBtn">Cancel</button>
		</div>
	</a>
</div>
</body>
</html>