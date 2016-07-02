    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>">Unit Testers</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>/">Home</a>
                    </li>
                    <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Test Frameworks <span class="caret"></span></a>
			          <ul class="dropdown-menu">
			            <% all_categories.each {category ->%>
								<li><a href="/${config.categories_path}/${category}"/>${category}</a></li>
							<%}%>
			          </ul>
			        </li>
                    
                    <li>
                        <a href="/${config.archive_file}">All Posts</a>
                    </li>
                    <li>
                        <a href="//manik.magar.me/about.html">Who I am?</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

