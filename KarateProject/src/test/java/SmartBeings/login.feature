Feature: login


Scenario Outline: Testing the exact response of login

Given url 'https://dev.smartbeings.ai/v1/user/login'
And request {  "userName":"<username>", "password": "<password>", "deviceId": "<deviceId>"}
When method POST
Then status <status>
# And match $ contains {message: "Login Successful"}
# And match $ contains {status: <status>}

Examples:
	| username 			|	password	|	deviceId		|	status	|
	| user4@test.com	|	password	|	861107037615409	|	200		|
	| vishnu			|	password 	|	kdfjasdfjdaks	|	444		|
	| user4@test.com	|	nothing		|	hfsj			|	444		|	
	|					|				|					|	422		|