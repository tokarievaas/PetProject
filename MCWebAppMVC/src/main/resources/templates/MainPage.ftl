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

	  <p>
	  Hi there!
	  This page will give you a little more info about me and my project.
	  </p>

      <p>
      I decided to try something realy new and as far as I always had interest in programming and had some knowledge in Java I came to an idea of creating my own home java-project.
      <br>
      So here it is: this page allows for registered users to create their home collection of favorite movies and music performers. By collection I mean that user can create lists only - not actual media content: we do not want to create some pirate source, ok?
      For not registered users some example list is displayed just to see, what it is like. Registered users can create (add, delete and edit) their own collections.
      <br>
      <br>
      My name is Oleksandra Tokarieva and I am juniour java developer.<br>
      I have graduated from National Mining University in Ukraine in 2007, master degree in Computer-assisted control systems and automation, Information Technologies department.<br>
      <br>
      This first home project has been created using the following technologies:<br>
      	- Spring MVC framework;<br>
      	- Freemarker template framework;<br>
      	- Bootstrap framework;<br>
      	-
      I used Maven for building my project.<br>
      I was guided by seniour java developer.<br>
      </p>

      <form method="get" action="Tokarieva_resume_java_draaaaaft.docx">
        <button type="submit" class = "btn btn-primary">My full resume can be downloaded here.</button>
      </form>
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