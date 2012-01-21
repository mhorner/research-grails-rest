package com.blogspot.mhorner.demo



import grails.test.mixin.*
import org.junit.*

import com.blogspot.mhorner.demo.Book;

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Book)
class BookTests {

    void testSave() {
		def book = new Book(title: "Grails Book", description: "Introduction to Grails").save(flush: true)
		assert Book.count() == 1
    }
}
