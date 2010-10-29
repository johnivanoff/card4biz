Feature: Manage contacts
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new contact
    Given I am on the new contact page
    When I fill in "First name" with "first_name 1"
    And I fill in "Last name" with "last_name 1"
    And I fill in "Title" with "title 1"
    And I fill in "Work" with "work 1"
    And I fill in "Mobile" with "mobile 1"
    And I fill in "Email" with "email 1"
    And I fill in "Account" with "account_id 1"
    And I press "Create"
    Then I should see "first_name 1"
    And I should see "last_name 1"
    And I should see "title 1"
    And I should see "work 1"
    And I should see "mobile 1"
    And I should see "email 1"
    And I should see "account_id 1"

  # Rails generates Delete links that use Javascript to pop up a confirmation
  # dialog and then do a HTTP POST request (emulated DELETE request).
  #
  # Capybara must use Culerity/Celerity or Selenium2 (webdriver) when pages rely
  # on Javascript events. Only Culerity/Celerity supports clicking on confirmation
  # dialogs.
  #
  # Since Culerity/Celerity and Selenium2 has some overhead, Cucumber-Rails will
  # detect the presence of Javascript behind Delete links and issue a DELETE request 
  # instead of a GET request.
  #
  # You can turn this emulation off by tagging your scenario with @no-js-emulation.
  # Turning on browser testing with @selenium, @culerity, @celerity or @javascript
  # will also turn off the emulation. (See the Capybara documentation for 
  # details about those tags). If any of the browser tags are present, Cucumber-Rails
  # will also turn off transactions and clean the database with DatabaseCleaner 
  # after the scenario has finished. This is to prevent data from leaking into 
  # the next scenario.
  #
  # Another way to avoid Cucumber-Rails' javascript emulation without using any
  # of the tags above is to modify your views to use <button> instead. You can
  # see how in http://github.com/jnicklas/capybara/issues#issue/12
  #
  Scenario: Delete contact
    Given the following contacts:
      |first_name|last_name|title|work|mobile|email|account_id|
      |first_name 1|last_name 1|title 1|work 1|mobile 1|email 1|account_id 1|
      |first_name 2|last_name 2|title 2|work 2|mobile 2|email 2|account_id 2|
      |first_name 3|last_name 3|title 3|work 3|mobile 3|email 3|account_id 3|
      |first_name 4|last_name 4|title 4|work 4|mobile 4|email 4|account_id 4|
    When I delete the 3rd contact
    Then I should see the following contacts:
      |First name|Last name|Title|Work|Mobile|Email|Account|
      |first_name 1|last_name 1|title 1|work 1|mobile 1|email 1|account_id 1|
      |first_name 2|last_name 2|title 2|work 2|mobile 2|email 2|account_id 2|
      |first_name 4|last_name 4|title 4|work 4|mobile 4|email 4|account_id 4|
