<!doctype html>
<html>
<head>
<meta name="layout" content="main" />
</head>
<body>
	<a href="#list-book" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/home')}"><g:message
						code="default.home.label" /></a></li>
			<li><a class="book" href="${createLink(uri: '/book')}"><g:message
						code="app.book.label" /></a></li>
		</ul>
	</div>
	<div class="content">
		<p>
			For companion blog entries see my blog, <a
				href='http://mhorner.blogspot.com'>Things I Find Interesting</a>.
			
		<ul>
			<li><a
				href='http://mhorner.blogspot.com/2012/01/rest-taking-closer-look-part-1.html'>REST
					- Taking a Closer Look (Part 1)</a></li>
		</ul>
		</p>
		<p>
			Click on <a class="book" href="${createLink(uri: '/book')}"><g:message
						code="app.book.label" /></a> to get started.
		</p>
	</div>
</body>
</html>