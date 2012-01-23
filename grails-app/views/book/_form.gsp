<%@ page import="com.blogspot.mhorner.demo.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="book.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${bookInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="book.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${bookInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="book.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" required="" value="${bookInstance?.author}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'iSBN', 'error')} required">
	<label for="ISBN">
		<g:message code="book.iSBN.label" default="ISBN" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="iSBN" required="" value="${bookInstance?.iSBN}"/>
</div>

