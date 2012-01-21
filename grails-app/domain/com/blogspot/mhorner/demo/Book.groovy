package com.blogspot.mhorner.demo

class Book {

	String title
	String description
	
    static constraints = {
		title(blank: false)
		description(blank: false)
    }
}
