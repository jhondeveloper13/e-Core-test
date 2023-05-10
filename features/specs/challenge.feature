#language: en

@challenge
Feature: Test cases challenge

Background:
	Given that the automation sandbox is on login Page

@tc001
Scenario Outline: TC001 - Login (Positive)      
  When the user set <username> and password <password> 
	Then the application is redirect to Invoice List page

  Examples:
  |   username    |   password   |
  |  "demouser"   |   "abc123"   |

@tc002
Scenario Outline: TC002 - Login (Negative)     
When the user set <username> and password <password> 
Then the application shows the message "Wrong username or password"

Examples:
|   username    |   password   |
|  "Demouser"   |   "abc123"   |
|  "demouser_"  |   "xyz"      |
|  "demouser"   |   "nananana" |

@tc003
Scenario: TC003 - Validate invoice details   
When the user set "demouser" and password "abc123" 
And the application is redirect to Invoice List page
When click in first invoce details
Then is possible validate






