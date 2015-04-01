<%include "header.gsp"%>

	<%include "menu.gsp"%>
	
    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>img/<%if (content.background) {%>${content.background}<% } else { %>about-bg.jpg<% }%>')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="page-heading">
                        <h1>${content.title}</h1>
                        <hr class="small">
                        <% if(content.subtitle) { %>
                        <span class="subheading">${content.subtitle}</span>
                        <% } %>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				${content.body}
            </div>
        </div>
	</div> <!-- /.container -->

    <hr>
	
<%include "footer.gsp"%>