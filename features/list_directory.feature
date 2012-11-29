Feature:List of directories

Scenario:Home page
   Given I will upload the username "user"
   And I will upload the password "test123"
   Then I go to the root page

@listdirectories
Scenario:show directories
    Given I go to the root page
    Then I click "test"
    And I will see the home page

   
