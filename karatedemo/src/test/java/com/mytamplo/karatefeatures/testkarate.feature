@ignore
Feature: tamplo has file

	Background:   
		* def expectedoutput = read('../karatedemo/result1.json') 
		#* def feature = read('testkarate2.feature')
		* def result = call read('testkarate2.feature')	
		
	Scenario: request for user 2

		Given url 'https://reqres.in/api/users/2'
		When method GET
		Then status 200
		#Then print response
		And match response == expectedoutput[0]
		Then print 'result calling testkarate2.feature file-------',result
		Given def first_name1 = result.response.data.first_name
		Then print 'first name from  response',first_name1
	
	Scenario: request for user 4

		Given url 'https://reqres.in/api/users/4'
		When method GET
		Then status 200
		Then print 'user response for four',response
		And match response.data.first_name == 'sameer'
		
		
		
	
	
	