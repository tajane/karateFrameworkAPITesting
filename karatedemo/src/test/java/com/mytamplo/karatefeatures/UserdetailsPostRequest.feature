@ignore
Feature: test post request

	Background: 
#	* def postdata = read('../karatedemo/postrequest1.json')
	* url 'https://reqres.in/api/users'
	* header Content-Type = 'application/json'
	
	Scenario:
	And request {"name": "morpheus","job": "leader"} 
#	And request postdata
	When method POST
	Then status 201
	Then print 'response....',response
	
	