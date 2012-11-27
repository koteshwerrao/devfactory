Feature:Download file

Scenario:Home page
   Given I will upload the username "user"
   And I will upload the password "test123"
   Then I go to the root page

Scenario:downloading file
    Given I go to the root page
    Then I click "Download"
    And I will see the home page
