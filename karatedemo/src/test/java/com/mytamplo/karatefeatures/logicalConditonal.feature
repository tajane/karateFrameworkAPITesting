@ignore
Feature: conditional logic

	@ignore
	Scenario: test
		* def logic = true ? 'Scenario1CallingTest.feature' : 'Scenario2CallingTest.feature'
		* print logic
		* def result = call read(logic)

	@ignore
	Scenario: test 2
		* def statuscode = 404
#		* def result = statuscode == 404 ? karate.call('Scenario1CallingTest.feature') : {}
		* def reslult2 = statuscode == 405 ? karate.call('Scenario2CallingTest.feature') : karate.call('Scenario1CallingTest.feature')
		
	@ignore
	Scenario: test 3
		* def responsecode = 404
		* if (responsecode == 404) karate.call('Scenario1CallingTest.feature')
		#       if the condition false then nothing will execute
		

	Scenario: test 4
		* def responsecode = 404
		* def myfun =
		"""
		function(){
			return 'hellow'
		}
		"""	
		* if (responsecode == 404) myfun
		* def runcode = (responsecode == 404) ? myfun() : {}
		Then print runcode