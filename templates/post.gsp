<%include "header.gsp"%>

    <%include "menu.gsp"%>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>img/<%if (content.background) {%>${content.background}<% } else { %>post-bg.jpg<% }%>')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="post-heading">
                        <h1>${content.title}</h1>
                        <% if(content.subtitle) { %>
                        <h2 class="subheading">${content.subtitle}</h2>
                        <% } %>
                        <span class="meta">Posted by ${content.author} on ${content.date.format("dd MMMM yyyy")}</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Post Content -->
    <article>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    ${content.body}
                </div>
            </div>
        </div>
    </article>

    <hr>

<%include "footer.gsp"%>