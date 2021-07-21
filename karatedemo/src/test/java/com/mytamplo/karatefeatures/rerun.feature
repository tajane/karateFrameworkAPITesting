Feature: rerun failure files

Background:
	* configure afterScenario =
	"""
	function(){
		var info = karate.info;
		karate.log(info);
		if(info.errorMessage)
		{
			karate.call('rerun.feature');
		}
	}
	"""

#you can not write print function here to print that in js file you need to use above syntax karate.log(info);
Scenario: 
	* configure driver = {type: 'firefoxdriver'}
	Given driver 'https://www.amazon.in/'
	Then maximize()
	Given driver 'https://www.facebook.com/'
	And waitfor('#abc')