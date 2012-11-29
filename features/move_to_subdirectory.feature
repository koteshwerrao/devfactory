Feature:Move to sub directory

Scenario:Home page
   Given I will upload the username "user"
   And I will upload the password "test123"
   Then I go to the root page

@movetosubdirectory
Scenario:moveing sub directory
    Given I go to the root page
    And I click "test123"
    And I click "back"
    Then I will see the home page
    
