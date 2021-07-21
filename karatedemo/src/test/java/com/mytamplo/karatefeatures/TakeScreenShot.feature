@ignore
Feature: screenshot test

Background:
	* configure afterScenario =
	"""
	function(){
		var info = karate.info;
		karate.log(info);
		if(info.errorMessage)
		{
			driver.screenshot();
		}
	}
	"""
	
Scenario: 
	* configure driver = {type: 'firefoxdriver'}
	Given driver 'https://www.amazon.in/'
	Then maximize()
#	* screenshot()
# above line take complete screen shot
#	* screenshot("//a[text()='Computers']")	
#	And waitFor('#abc')