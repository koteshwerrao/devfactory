Feature:Deleteing file

Scenario:Home page
   Given I will upload the username "user"
   And I will upload the password "test123"
   Then I go to the root page

Scenario:delete the file
    Given I go to the root page
    And I click "Delete"
    And I pressed Ok
    And I will see the home page
@delete
Scenario:Delete the file with cancelbutton
    Given I go to the root page
    And I click "Delete"
    And I press Cancel
    And I will see the home page
   

