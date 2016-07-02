<%include 'header.gsp'%>

	<%include 'menu.gsp'%>
	 <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>img/<%if (content.background) {%>${content.background}<% } else { %>post-bg.jpg<% }%>')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="post-heading">
                        <h1>Blog Archive</h1>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
    <div class="container">	
		
	<!--<ul>-->
		<%def last_month=null;%>
		<%published_posts.each {post ->%>
			<%if (last_month) {%>
				<%if (post.date.format("MMMM yyyy") != last_month) {%>
					</ul>
					<h4>${post.date.format("MMMM yyyy")}</h4>
					<ul>
				<%}%>
			<% } else { %>
				<h4>${post.date.format("MMMM yyyy")}</h4>
				<ul>
			<% }%>
			
			<li>${post.date.format("dd")} - <a href="${post.permalink}">${post.title}</a></li>
			<%last_month = post.date.format("MMMM yyyy")%>
		<%}%>
	</ul>
	</div> <!-- /.container -->
	
<%include "footer.gsp"%>