@ignore
Feature: call java function

	Scenario: call java method
	* def javademo = Java.type('com.mytamplo.karatefeatures.Javafunctions')
	* def result = new javademo().nonstaticfunctions("nitintajane");
	Then print result
	* def result2 = javademo.staticfunct();