<%include "header.gsp"%>

    <%include "menu.gsp"%>
    
    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>img/home-bg.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1>Unit Testers</h1>
                        <hr class="small">
                        <span class="subheading">People Who Love Testing Every Unit!</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <%published_posts.each {post ->%>
                    <div class="post-preview">
                        <a href="${post.permalink}">
                            <h2 class="post-title">
                                ${post.title}
                            </h2>
                        </a>
                        ${post.body}
                        <p class="post-meta">Posted by ${post.author} on ${post.date.format("dd MMMM yyyy")} under <a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>${config.categories_path}/${post.primary_category}">${post.primary_category}</a></p>
                    </div>
                    <hr>
                <%}%>
        
                <!-- Pager -->
                <ul class="pager">
                    <li class="next">
                        <a href="/${config.archive_file}">Older Posts &rarr;</a>
                    </li>
                </ul>
            </div>
        </div>
    </div> <!-- /.container -->

<%include "footer.gsp"%>