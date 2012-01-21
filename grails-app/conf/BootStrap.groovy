import com.blogspot.mhorner.demo.Role
import com.blogspot.mhorner.demo.User
import com.blogspot.mhorner.demo.UserRole

class BootStrap {

    def init = { servletContext ->
		
		def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
		def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)

		def user1 = User.findByUsername('mhorner') ?: new User(username: 'mhorner', enabled: true, password: 'test', firstName: 'Matt', lastName: 'Horner').save(failOnError: true)
		if (!user1.authorities.contains(userRole)) {
			UserRole.create user1, userRole, true
		}
		
		def user2 = User.findByUsername('admin') ?: new User(username: 'admin', enabled: true, password: 'pass', firstName: 'Admin', lastName: 'User').save(failOnError: true)
		if (!user2.authorities.contains(adminRole)) {
			UserRole.create user2, adminRole, true
		}
		if (!user2.authorities.contains(userRole)) {
			UserRole.create user2, userRole, true
		}
		
		assert User.count() == 2
		assert Role.count() == 2
		assert UserRole.count() == 3
    }
    def destroy = {
    }
}
