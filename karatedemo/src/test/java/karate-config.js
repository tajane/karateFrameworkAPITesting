function fn()
{
	var config = 
	{
	 		abc : 'test',
	 		bindurl : 'https://reqres.in/api/users' 
	}
	//this below data we pass from commond prompt like 
	//mvn test -Dkarate.env=dev
	/*var env = karate.env
	karate.log("enviormment variable value is ...",env)
	if(env=='dev')
	{
		config.bindurl = 'https://dev.in/api/users';
	}else if(env=='qa'){
		
		config.bindurl = 'https://qa.in/api/users';
	}else
		{
		config.bindurl = 'https://reqres.in/api/users';
		}*/
	/*var result = karate.callSingle('classpath:com/mytamplo/karatefeatures/userdetails.feature')
	config.auth*/
	
	return config;
}