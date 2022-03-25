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
	  Hi, I'm Oleksandra!
	  </p>

      <p>
      I've always been quite a fan of programming, but somehow my career took a different path at first. And then my husband received a job offer abroad and I’ve got some free time while we were moving countries. So I decided to become a software developer and this little project is a result of my study and supposed to prove that I really can do IT.
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
            <p style="color: black">
                <b>Bio:</b> 7 months of a full-time SWE experience | a web portal developed from scratch |never ever give up.
            </p>

              <h5 class = "section-title">WORK EXPERIENCE</h5>
              <h5><b>Sunbird Software |Java Developer (January/2018 &mdash; July/2018, 7 mos)</b>	</h5>
              <p>
                Sunbird was ranked #1 Data Center Infrastructure Management solution in Data Centre Magazine 2020. Since 2007, Sunbird products are being used globally by 1,650+ customers across hundreds of thousands of racks, managing millions of assets, and monitoring billions of data points.
                I designed and developed components of the Change Management system which provides tools for workflow automation. The solution enables to generate change requests, automate device moves, and maintain a complete audit trail of requests and work orders for compliance.
              </p>
                <ul>
                    <li>Developed several backend features for REST service, ~5 new tab views, and more</li>
                    <li>Prepared code refactoring consisting of 60 classes</li>
                    <li>Fixed ~50 bugs</li>
                    <li>Improved on-boarding manual (added more specifics on how to set up working environment, useful for junior specialists)</li>
                    <li><b>Stack:</b> Java, PostgreSQL</li>
                </ul>
              </p>
              <h5><b>ISD, (branch of SCC Soft Computer) |Technical support specialist (July/2013 &mdash; November/2014, 1 yr. 5 mos.) </b></h5>
              <p>
                SCC Soft Computer has been a laboratory information systems (LIS) provider since 1979. I provided technical support for microbiology and clinical laboratory software: SoftLab and SoftMic.
              </p>
              <ul>
                <li>Investigated client issues, performed preventive monitoring and log analysis of client system condition with dedicated scripts</li>
                <li><b>Stack:</b> UNIX shell</li>
              </ul>
              <h5><b>Regional information analytical medical statistic center | Computer system engineer (September/2012 &mdash; June/2013, 9 mos)</b>	September/2012 – June/2013</h5>
              <p>
                Supported regional Health Statistics department’s IT infrastructure which included such activities as maintenance of the department’s website, statistical software maintenance in central office and regional locations, assistance in software and hardware audit in central office.
              </p>
              <ul>
                <li>Maintained Health department website, implemented automated collection and consolidation of statistical information into reports</li>
              </ul>

              <h4 class = "section-title">EDUCATION</h4>
              <p><b>Master's Degree in Computer Science | National Mining University (Dnipro, 2006 &mdash; 2007)</b></p>
              <p><b>Bachelor’s Degree in Computer Science | National Mining University (Dnipro, 2002 &mdash; 2006)</b></p>

              <h5 class = "section-title">ONLINE COURSES</h5>
              <ul>
                <li>Udacity &mdash; Data Structures & Algorithms in Python (2021)</li>
                <li>Udacity &mdash; Introduction to Python Programming (2021)</li>
                <li>Duke University, Coursera &mdash; Java Programming: Arrays, Lists, and Structured Data</li>
                <li>University of California, Coursera &mdash; Learning How to Learn: Powerful mental tools to help you master tough subjects</li>
                <li>Duke University, Coursera &mdash; Programming Foundations with JavaScript, HTML and CSS</li>

              </ul>
               <h5 class = "section-title">PROJECT</h5>
               <h5><b>"Favorite Media Collection" | Pet project (December 2016 &mdash; July 2017, 8 mos) </b></h5>

              <h5 class = "section-title">LANGUAGES</h5>
              <ul>
                <li>English - Fluent</li>
                <li>Russian - Native</li>
                <li>Ukrainian - Native</li>
              </ul>

              <h4 class = "section-title">HOBBIES</h4>
                <ul>
                  <li>Bicycling</li>
                  <li>Snowboarding</li>
                  <li>Lots of other outdoor fun</li>
                  <li>Photography</li>
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