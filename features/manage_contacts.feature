Feature: Manage contacts
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new contact
    Given I am on the new contact page
    When I fill in "First name" with "john"
    And I fill in "Last name" with "doe"
    And I fill in "Title" with "title"
    And I fill in "Work" with "972-555-1234"
    And I fill in "Mobile" with "214-555-1234"
    And I fill in "Email" with "test@example.com"
    And I fill in "Account" with "1"
    And I press "Create"
    Then I should see "john"
    And I should see "doe"
    And I should see "title"
    And I should see "972-555-1234"
    And I should see "214-555-1234"
    And I should see "test@example.com"
    And I should see "1"

@wip
  Scenario: Delete contact
    Given the following contacts:
      |first_name|last_name|title|work|mobile|email|account_id|
      |first_name 1|last_name 1|title 1|work 1|mobile 1|email1@example.com|1|
      |first_name 2|last_name 2|title 2|work 2|mobile 2|email2@example.com|1|
      |first_name 3|last_name 3|title 3|work 3|mobile 3|email3@example.com|1|
      |first_name 4|last_name 4|title 4|work 4|mobile 4|email4@example.com|1|
    When I delete the 3rd contact
    Then I should see the following contacts:
      |First name|Last name|Title|Work|Mobile|Email|Account|
      |first_name 1|last_name 1|title 1|work 1|mobile 1|email1@example.com|1|
      |first_name 2|last_name 2|title 2|work 2|mobile 2|email2@example.com|1|
      |first_name 4|last_name 4|title 4|work 4|mobile 4|email4@example.com|1|
