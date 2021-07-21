@ignore
Feature: data driven from feature file

	Background: common data for resources
	* url 'http://dummy.restapiexample.com/'

		Scenario Outline: data driven test
			Given path 'api/v1/create'
			And request {"name":<name>,"salary":<salary>,"age":<age>}
			When method POST
			Then status 200
			Then print 'create response',response.data.id
			Then def result_id = response
			
			Given path 'api/v1/employee/'+ result_id.data.id
			And method GET
			Then status 200
			Then print 'employee details response',response
			Then match response.data contains {id: '#(result_id.data.id)'}
			#here we are matching actual id and expected id 
		
		
			Examples: 
			|name|salary|age|
			|tajane|3455|35|
			|nitin|1212|32|