<!DOCTYPE html>
<html>

<link rel="stylesheet" href="/css/bootstrap.min.css">
<script type="text/javascript" src="/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/css/headerStyle.css">

<body>
<div class = "container">
	<div  class = "jumbotron text-center" id = "header">
	<form action = "/media_coll/logout">
		<div class = "row">
			<div class="btn-group pull-right">
			  <button type="button" class="btn btn-primary" onclick = "window.open('/media_coll/login', '_self')">Log in</button>
			  <button type="submit" class="btn btn-primary">Log out</button>
			  <button type="button" class="btn btn-primary" onclick = "window.open('/media_main/newUser', '_self')">Register</button>
			</div>
		</div>
    </form>

    <h1>
        Welcome ${userName},
    </h1>
    <p>
        to my little pet project
    </p>
	</div>

  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#about">About</a></li>
    <li><a data-toggle="tab" href="#contentm">Content</a></li>
<!--     <li><a data-toggle="tab" href="#menu2">Menu 2</a></li>
    <li><a data-toggle="tab" href="#menu3">Menu 3</a></li> -->
  </ul>

    <div class="tab-content">
    <div id="about" class="tab-pane fade in active">
      <h3>ABOUT</h3>
	  <p>
	  Hi there!
	  This page will give you a little more info about me and my project.
	  </p>
      <!-- <iframe src = "loginForm.html" width = "100%" height = "500" style = "border: 0"></iframe> -->
    </div>
    <div id="contentm" class="tab-pane fade">
      <h3>Content</h3>
      <iframe name = "mediaCollFrame" src = "/media_coll" width = "100%" height = "700" style = "border: 0"></iframe>
	  <!-- <p>Sed ut</p> -->
    </div>
<!--     <div id="menu2" class="tab-pane fade">
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>Menu 3</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div> -->
  <!-- </div> -->
	</div>
</div>

</body>
</html>