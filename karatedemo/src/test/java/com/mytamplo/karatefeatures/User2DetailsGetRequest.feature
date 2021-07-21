@ignore
Feature: get second user from user

Background:
	* url 'https://reqres.in/api/users?page=2'
	* def expectedoutput = read('../karatedemo/result2.json')
	
	@ignore 
	Scenario: 2 record 
		When method GET
		Then status 200
		Then print response
		Then match $.data[2].id == 9
		#Then print $.data[2].id
		#above line does not get response data because $ not work with print statement
		#And match $.data[1].id == '#number'
		#And match $.data[1].email == '#string'
	
	@ignore
	Scenario: checking function
		When method GET
		Then status 200
		
		Then def multiplication = 
		"""
		function(x)
		{
			result = x*x
			return result;
		}
		"""
		Then def result2 = call multiplication 10
		Then print 'addtion of two number',result2
	
	
#test global variable test	
	
		
	Scenario: global varibale test scenario 1
		Given path '3'
		
		
	Scenario: global varibale test scenario 2
		Given path '4'
