package com.blogspot.mhorner.demo

class Book {

	String title
	String description
	String author
	String iSBN
	
    static constraints = {
		title(blank: false)
		description(blank: false)
		author(blank: false)
		iSBN(blank: false)
    }
}
