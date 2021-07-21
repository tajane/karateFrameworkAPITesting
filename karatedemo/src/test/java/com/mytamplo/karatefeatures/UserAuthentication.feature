@ignore
Feature: using token accessing action

	Background: 
		* url 'http://149.202.193.103/rest/write/action/createAction'
		* def bodydata = read('../karatedemo/actionbodydata.json')
		* headers {Content-Type : 'application/json', companyId : '4475',token : 'DQZMNTVZ4Q6uDEif8JRqtjbrTuGiMZLt7dtYS7TKkNQ%3D%3A1607768529746%3A4475%3A398c1a2fe025f27a59bb9f123ed16ccf',resourceInstanceId : '7069'}

		Scenario: getting token id
			And request bodydata
#			And form field dueDate = "24 Dec 2020"
#			And form field assignee = {"id":7060}
			When method POST
			Then status 200
			Then print response
			