Feature: Manage accounts
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new account
    Given I am on the new account page
    When I fill in "Name" with "name 1"
    And I fill in "Address" with "address 1"
    And I fill in "City" with "city 1"
    And I fill in "State" with "state 1"
    And I fill in "Zip code" with "zip_code 1"
    And I press "Create"
    Then I should see "name 1"
    And I should see "address 1"
    And I should see "city 1"
    And I should see "state 1"
    And I should see "zip_code 1"


  Scenario: Delete account
    Given the following accounts:
      |name|address|city|state|zip_code|
      |name 1|address 1|city 1|state 1|zip_code 1|
      |name 2|address 2|city 2|state 2|zip_code 2|
      |name 3|address 3|city 3|state 3|zip_code 3|
      |name 4|address 4|city 4|state 4|zip_code 4|
    When I delete the 3rd account
    Then I should see the following accounts:
      |Name|Address|City|State|Zip code|
      |name 1|address 1|city 1|state 1|zip_code 1|
      |name 2|address 2|city 2|state 2|zip_code 2|
      |name 4|address 4|city 4|state 4|zip_code 4|
