@ignore
Feature: test one scenario calling from aother scenario
	
	@tag3
	Scenario: 
		* print 'Scenario three'
	
	@tag4	
	Scenario: 
		* print 'scenario four'
		* def result =  call read('Scenario1CallingTest.feature@tag1')