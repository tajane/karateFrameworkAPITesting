@ignore
Feature: user details with query paramter

	Background:
	* def postdata = read('../karatedemo/postrequest1.json')
	* url 'https://reqres.in/api/users'
	* header Content-Type = 'application/json'
	* param delay = 3
	
	Scenario: request with query paramter
		Given request postdata
		#And param delay = 3 
		#And params {delay : 3, otherpram : value}
		When method GET
		Then status 200
		Then print response