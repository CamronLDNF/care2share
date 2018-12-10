Feature: Fundraiser has an admin page

    As a Fundraiser
    In order to update or delete my campaign
    I would like to see an admin page

    Background: 
        Given the following user exists
            | firstname | lastname | email         | 
            | Hanna     | Nyman    | hanna@random.com |  
            |aaa        |   aaa    |aaa@aaa.com    |
        
        And the following campaign exists
            | title        | description                      | amount_raised |user|
            |Tuna          | I grew up always helping others. | 1000.00       |hanna@random.com|
            |Help|I need some help|20000|aaa@aaa.com|
            |Books|Books on something|200|hanna@random.com|
        
        And I visit the site
        And I have logged in 
        And I should be on my admin page
    Scenario: Admin can see all his campaigns only
        Then I should see 'Tuna'
        And I should see 'Books'
        And I should not see 'Help'
    Scenario: Admin can see edit and delete button on his page
        Then I should see 'Edit'
        Then I should see 'Destroy'
  