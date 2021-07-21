@ignore
Feature: test one scenario calling from aother scenario
	
	@tag1 @ignore
	Scenario: 
		* print 'Scenario one'
	
	@tag2	
	Scenario: 
		* print 'scenario two'
		* def result =  call read('Scenario1CallingTest.feature@tag1')