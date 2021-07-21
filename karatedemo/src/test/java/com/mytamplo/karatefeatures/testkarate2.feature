@ignore
Feature: tamplo has file

	Background:   
		* def expectedoutput = read('../karatedemo/result1.json') 
	
	Scenario: request for user 3 
	
		Given url 'https://reqres.in/api/users/3'
		When method GET
		Then status 200
		Then print response
		And match response == expectedoutput[1]	