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
	  Hi, I’m Aleksandra!
	  </p>

      <p>
      I’ve always been quite a fan of programming, but somehow my career took a different path at first. And then my husband received a job offer abroad and I’ve got some free time while we were moving countries. So I decided to become a software developer and this little project is a result of my study and supposed to prove that I really can do IT.
      <br>
      <br>
      The main idea behind this project is to create a portal where people would be able to create and maintain collections of their favorite media titles, such as movies or music. Only titles and some related data, not content.
      <br>
      Of course, at this stage I don’t feel that I have enough knowledge and/or time to create something really amazing. This is just a Proof Of Concept with very limited functionality.
      <br>
      So, the limited functionality allows:
      <br>
      <div id = "functionflity">
        <ol>
            <li>Unregistered users to view the page about me and the media collection of the Demo user.</li>
            <li>Register and log in to be able to start maintaining your own collections: to add, modify and delete new items.</li>
        </ol>
      </div>
      <br>
      I didn’t do this project fully myself with no help. My husband, who is a software developer, was my tutor, provided topics to learn, tasks to solve, helped me with planning, performed code review and helped me multiple times when I stuck. But still all the coding I have done myself (and really proud of it :) ). I realize that coding under guidance is not such a major part, but again I have quite a road in front of me before I become a strong independent professional.
      If you are interested in seeing the code I’ve committed it to Github here.
      <br>
      Also, if you want to see the list of technologies used in the project, <a href="#technologies" data-toggle="collapse">look inside</a>.

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
      You can read my resume below as well as download a <a href = "Tokarieva_resume_java.docx">Word</a> or <a href = "Tokarieva_resume_java.docx">PDF</a> version of it.
      This is a link to my LinkedIn Page. <br>
      My contacts: phone, email. <br>
      Sincerely yours, <br>
      Aleksandra (aka Oleksandra or Sasha) Tokarieva<br>
      <a href = "#resume" data-toggle="collapse">View my resume.</a>
      </p>

      <div id = "resume" class = "collapse" style="color:#1f497d; font-family:calibri">
        <p style="color: black; font-size: 150%">Junior java developer with more than a year of experience in L2 technical support. Worked in a client-facing environment for over 3 years. Continuously work on self-education. Diligent and responsible.</p>

        <div class="panel-group">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title">
                <a data-toggle="collapse" href="#view-skills">TECHNICAL SKILLS</a>
              </h4>
            </div>
            <div id="view-skills" class="panel-collapse collapse">
              <div class="panel-body skills">Java</div>
        	  <div class="panel-body skills">Junit, TestNG</div>
              <div class="panel-body skills">SQL (DDL, DML)</div>
              <div class="panel-body skills">HTML, CSS</div>
              <div class="panel-body skills">XML, JSON, XPath</div>
              <div class="panel-body skills">REST and SOAP web services theory</div>
              <div class="panel-body skills">Jackson, JAXB, GSON</div>
              <div class="panel-body skills">Spring Web MVC, Spring Boot</div>
              <div class="panel-body skills">Spring Data, Spring Security</div>
              <div class="panel-body skills">Freemarker template</div>
              <div class="panel-body skills">Atlassian Jira</div>
              <div class="panel-body skills">UNIX shell</div>
              <div class="panel-body skills">Maven</div>
              <div class="panel-body skills">Selenium</div>
            </div>
          </div>
        </div>

        <div class="panel-group">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title">
                <a data-toggle="collapse" href="#view-accomplishments">MAIN ACCOMPLISHMENTS</a>
              </h4>
            </div>
            <div id="view-accomplishments" class="panel-collapse collapse">
              <div class="panel-body">As a result of my self-education I created from scratch a real and working web application. On the way I implemented my own versions of Array list and Linked list, kind of a very primitive web-server, saving data sets to different formats such as JSON, XML, CSV as well as plain binary.</div>
            </div>
          </div>
        </div>

        <div class="panel-group">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title">
                <a data-toggle="collapse" href="#view-experience">WORK EXPERIENCE</a>
              </h4>
            </div>
            <div id="view-experience" class="panel-collapse collapse">
              <div class="panel-body job-title">ISD, (branch of SCC Soft Computer)</div>
        	  <div class="panel-body"><b>Technical support specialist </b>	July/2013 – November/2014</div>
              <div class="panel-body">•	Performed preventive monitoring and analysis of client system condition with special tools (e.g. scripts to gather traces/logs);</div>
              <div class="panel-body">•	Assisted with correct system setup and consult about system functionality;</div>
        	  <div class="panel-body">•	Created new issues in a bug-tracking system;</div>
        	  <div class="panel-body">•	Gathered information from customers about production issues and determined their causes by evaluating and analyzing the symptoms;</div>
        	  <div class="panel-body">•	Reproduced production/client issues in one or more testing environments;</div>
        	  <div class="panel-body">•	Searched for information about current functionality and existing defects in the bug-tracking system;</div>
        	  <div class="panel-body">•	Communicated with client representatives and call-center support specialists located in USA</div>

              <div class="panel-body job-title">Regional information analytical medical statistic center</div>
              <div class="panel-body"><b>Computer system engineer</b>	September/2012 – June/2013</div>
              <div class="panel-body">•	Managed content of Health protection department web-site;</div>
              <div class="panel-body">•	Designed reports in Power Point and created graphic items for presentations and web-site using Adobe Photoshop;</div>
              <div class="panel-body">•	Participated in collection and consolidation of statistical information into reports;</div>
              <div class="panel-body">•	Provided technical assistance with equipment during presentations.</div>
            </div>
          </div>
        </div>

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