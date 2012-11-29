Feature:Uploading New File

Scenario:Home page
   Given I will upload the username "user"
   And I will upload the password "test123"
   Then I go to the root page

@upload
Scenario:Upload file
    Given I go to the root page
    Then I press Upload New File
    And I browse image
    And I upload the file

    
    
    


