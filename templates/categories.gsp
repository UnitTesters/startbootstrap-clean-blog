<%include 'header.gsp'%>

	<%include 'menu.gsp'%>
	
	<!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>img/<%if (content.background) {%>${content.background}<% } else { %>post-bg.jpg<% }%>')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="post-heading">
                        <h1>All Categories</h1>
                    </div>
                </div>
            </div>
        </div>
    </header>

	<div class="container">
		<div class="categories">
			<ul>
			<%content.categories.each {category,path ->%>
				<li><a href="${path}"/>${category}</a></li>
			<%}%>
			</ul>
		</div>
	</div>
	

<%include "footer.gsp"%>
