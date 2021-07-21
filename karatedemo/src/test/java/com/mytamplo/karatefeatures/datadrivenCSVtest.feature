@ignore
Feature: data driven using csv file

	Background: common data for resources
	* url 'http://dummy.restapiexample.com/'

		Scenario Outline: data driven test
			Given path 'api/v1/create'
			And request {"name":<name>,"salary":<salary>,"age":<age>}
			When method POST
			Then status 200
			Then print 'create response',response.data.id
			
			Examples: 
			|read('../karatedemo/inputdata.csv')|