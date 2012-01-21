package com.blogspot.mhorner.demo

import grails.plugins.springsecurity.Secured


@Secured(['ROLE_USER'])
class HomeController {

    def index() { }
    
	@Secured(['ROLE_ADMIN'])
    def adminOnly() { render 'admin' }
}
