@ignore
Feature: get request with common url

	Background: common url with different path
	
	
		Scenario: request for 3 user
			Given url bindurl    
			 # here bindurl taking from karate-config.js            
			And path 3
			When method GET
			Then status 200
			Then print 'response....user 3',response