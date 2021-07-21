@ignore
Feature: get request with common url

	Background: common url with different path
	* url 'https://reqres.in/api/users'
	
		Scenario: request for 3 user
			Given path 3
			When method GET
			Then status 200
			Then print 'response....user 3',response
		
		Scenario: request for 4 user
			Given path 4
			When method GET
			Then status 200
			Then print 'response....user 4',response 