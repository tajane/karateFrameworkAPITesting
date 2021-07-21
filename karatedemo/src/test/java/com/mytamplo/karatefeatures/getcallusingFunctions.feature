@ignore
Feature: tamplo has file

	Background:   
		* def expectedoutput = read('../karatedemo/result1.json') 
		* url 'https://reqres.in/api/users'
	
	@ignore
	Scenario: request for user 3 
	
		Given path 3
		When method GET
		Then status 200
		Then print 'response user.....',response
		Then def myfun = function(){a=2,b=4,c=a*b ; return c}
		Then def callfunction1 = call myfun
		Then print 'call function value',callfunction1
		Then def myfunction2 = 
		"""
		function()
		{
			return 'return seperate function'
		}
		"""
		Then def callfunction2 = call myfunction2
		Then print 'callfunction2....',callfunction2

	@ignore
	Scenario: get number of user list
			
			Given param page = 2
			When method GET
			Then status 200
			Then print 'list of response',response.data
			Then def collection_of_data = response.data
			Then def collection_function = 
			"""
			function()
			{
				size_of_array = collection_of_data.size()
				for(i=0; i<size_of_array; i++)
				{
					print('response data from  collection.....',collection_of_data[i])
				}
			}
			"""		
			Then def call_collection_funct = call collection_function

	@ignore
	Scenario: get number of user list
			
			Given param page = 2
			When method GET
			Then status 200
			Then def size_of_array = response.data
			Then def size_function = 
			"""
			function(arg)
			{
				return arg.length
#				return arg[0]  #this will print first record from  list 
			}
			"""
			Then def callsize_function = call size_function size_of_array
			Then print '....list of record....',callsize_function
	
	@ignore
	Scenario: get number of user list
			
			Given param page = 2
			When method GET
			Then status 200
			Then def size_of_array = response.data
			Then def size_function = 
			"""
			function(arg)
			{ 
				return arg[5].email
			}
			"""
			Then def callsize_function = call size_function size_of_array
			Then print '....list of record....',callsize_function	
			
	Scenario: get user whose having id 8 
			
			Given param page = 2
			When method GET
			Then status 200
			Then def size_of_array = response.data
			Then def size_function = 
			"""
			function(arg)
			{ 
				for(i=0;i<size_of_array.length;i++)
				{
					if(arg[i].id == 12)
					{
						return arg[i]
					}
				}
			}
			"""
			Then def callsize_function = call size_function size_of_array
			Then print '....list of record....',callsize_function
				