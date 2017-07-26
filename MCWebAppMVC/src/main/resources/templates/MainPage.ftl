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
	  Hi, I’m Oleksandra!
	  </p>

      <p>
      I’ve always been quite a fan of programming, but somehow my career took a different path at first. And then my husband received a job offer abroad and I’ve got some free time while we were moving countries. So I decided to become a software developer and this little project is a result of my study and supposed to prove that I really can do IT.
      <br>
      <br>
      The main idea behind this project is to create a portal where people would be able to create and maintain collections of their favorite media titles, such as movies they watched or music they listened to. This would allow them to easily recommend certain content to somebody without struggling to remember the name of the movie (or band or singer). Only titles and some related data can be added, not content.

      <br>
      So, the current functionality allows:
      <br>
      <div id = "functionflity">
        <ol>
            <li>Unregistered users to view the page about me and the media collection of the Demo user.</li>
            <li>Register and log in to be able to start maintaining your own collections: to add, modify and delete new items.</li>
        </ol>
      </div>
      <p>The implementation of REST Web Service is available by <a href = "/media_coll_json" target="_blank"> link</a> – (In current version it returns default user collection) </p>
      <br>
      If you are interested in seeing the code I’ve committed it to Github <a href = "https://github.com/tokarievaas/PetProject" target="_blank">here</a>.
      <br>
      The list of technologies used in the project, <a href="#technologies" data-toggle="collapse">can be seen here>></a>.

      </p>
      <div id = "technologies" class="collapse">
        <ul>
            <li>Spring Boot (WebMVC +JPA);</li>
            <li>Freemarker templates;</li>
            <li>Bootstrap framework;</li>
            <li>H2 DataBase;</li>
            <li>TestNG;</li>
            <li>Maven;</li>
            <li>Git;</li>
        </ul>
      </div>
      <br>
      <p> Finally, a little bit about me. <br>
      You can read my resume below as well as download a <a href = "Tokarieva_resume_java.docx">Word</a> or <a href = "Tokarieva_resume_java.pdf">PDF</a> version of it.  <br>
      <a href = "https://www.linkedin.com/in/oleksandra-tokarieva/" target = "_blank">This is a link to my LinkedIn Page.</a> <br>
      My contacts: phone - +18622958923, email - tokarevaas@gmail.com. <br>
      Sincerely yours, <br>
      Oleksandra Tokarieva<br>

      <div class="panel panel-info">
        <div class="panel-heading">
            <a data-toggle="collapse" href="#resume">View my resume</a>
        </div>
        <div id = "resume" class="panel-body panel-collapse collapse">
            <p style="color: black; font-size: 150%">Strong knowledge of Java core and basic data structures, code debugging experience, knowledge and compliance with Clean Code concepts. Good knowledge of SQL, HTML, CSS, XML. Experience and basic understanding of REST Web Services.</br>
                                                     Great inner motivation to quickly learn and master new technologies to become successful in the new field and make contribution to real projects.</p>

            <h4 class = "section-title">TECHNICAL SKILLS</h4>
            <table class="table table-striped">
                <tbody>
                  <tr>
                    <td>Java</td>
                    <td>Spring Web MVC, Spring Boot</td>
                  </tr>
                  <tr>
                    <td>Junit, TestNG</td>
                    <td>Spring Data, Spring Security</td>
                  </tr>
                  <tr>
                    <td>SQL (DDL, DML)</td>
                    <td>Freemarker template</td>
                  </tr>
                  <tr>
                    <td>HTML, CSS</td>
                    <td>Atlassian Jira</td>
                  </tr>
                  <tr>
                    <td>XML, JSON, XPath</td>
                    <td>UNIX shell</td>
                  </tr>
                  <tr>
                    <td>REST and SOAP web services theory</td>
                    <td>Maven</td>
                  </tr>
                  <tr>
                    <td>Jackson, JAXB, GSON</td>
                    <td>Selenium</td>
                  </tr>
                </tbody>
              </table>

              <h4 class = "section-title">MAIN ACCOMPLISHMENTS</h4>
              <p>
                <ul>
                    <li>Greatly increased application performance by introducing cache for frequently used objects;</li>
                    <li>Promoted necessity of redesigning corporate web-site to improve comprehensibility and access to most important information;</li>
                    <li>Reduced by 80% time for report creation by automating the process of gathering and consolidation of data.</li>
                </ul>
              </p>

              <h4 class = "section-title">WORK EXPERIENCE</h4>
              <h4>ISD, (branch of SCC Soft Computer)</h4>
              <h5><b>Technical support specialist </b>	July/2013 – November/2014</h5>
              <ul>
                <li>Investigated client issues in development environment and provided fixes for them;</li>
                <li>Performed preventive monitoring and log analysis of client system condition with dedicated scripts;</li>
                <li>Assisted with application deployment and configuration.</li>
              </ul>
              <h4>Regional information analytical medical statistic center</h4>
              <h5><b>Computer system engineer</b>	September/2012 – June/2013</h5>
              <ul>
                <li>Designed reports in Power Point and created graphic elements using Adobe Photoshop;</li>
                <li>Maintained Health department web site;</li>
                <li>Implemented automated collection and consolidation of statistical information into reports.</li>
              </ul>

              <h4 class = "section-title">EDUCATION</h4>
              <h4 class = "univercity">National Mining University</h4>
              <p>September/2006 – June/2007</p>
              <p>Master degree - Computer Science</p>
              <h4 class = "univercity">National Mining University</h4>
              <p>September/2002 – June/2006</p>
              <p>Bachelor degree - Computer Science</p>

              <h4 class = "section-title">ONLINE COURSES</h4>
              <p><b>Duke University, Coursera</b> – Java Programming: Arrays, Lists, and Structured Data</p>
              <p><b>University of California, Coursera </b> – Learning How to Learn: Powerful mental tools to help you master tough subjects</p>

              <h4 class = "section-title">LANGUAGES</h4>
              <ul>
                <li>English - Fluent</li>
                <li>Polish – Fluent</li>
                <li>Russian – Native</li>
                <li>Ukrainian – Native</li>
              </ul>

        </div>
      </div>
      </p>

      <div id = "resume" class = "collapse" style="color:#1f497d; font-family:calibri">



        <div class="panel-group">
          <div class="panel panel-default">
        	<div class="panel-heading">
        	  <h4 class="panel-title">
        		<a data-toggle="collapse" href="#view-education">EDUCATION</a>
        	  </h4>
        	</div>
        	<div id="view-education" class="panel-collapse collapse">
        	  <div class="panel-body univercity">National Mining University</div>
        	  <div class="panel-body">September/2006 – June/2007</div>
        	  <div class="panel-body">Master degree - Computer Science</div>
        	  <div class="panel-body univercity">National Mining University</div>
              <div class="panel-body">September/2002 – June/2006</div>
              <div class="panel-body">Bachelor degree - Computer Science</div>
        	</div>
          </div>
        </div>

        <div class="panel-group">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#view-languages">LANGUAGES</a>
                    </h4>
                </div>
                <div id="view-languages" class="panel-collapse collapse">
                    <div class="panel-body">English - Fluent</div>
        			<div class="panel-body">Polish – Fluent</div>
        			<div class="panel-body">Russian – Native</div>
        			<div class="panel-body">Ukrainian – Native</div>
                </div>
            </div>
        </div>

      </div>
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