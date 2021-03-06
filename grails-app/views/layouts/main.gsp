<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<r:require module="application" />
		<title><g:layoutTitle default="Grails"/></title>
		<g:layoutHead/>
        <r:layoutResources />
	</head>
	<body>
		<sec:ifLoggedIn>
		Welcome <sec:username/> - <g:link controller='logout'>Logout</g:link>
		</sec:ifLoggedIn>
		
		<sec:ifNotLoggedIn>
		<g:link controller='login' action='auth'>Login</g:link>
		</sec:ifNotLoggedIn>
		<h1>Research Project : Grails and REST</h1>
		<g:layoutBody/>
        <r:layoutResources />
	</body>
</html>