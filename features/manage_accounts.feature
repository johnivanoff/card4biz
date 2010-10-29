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
