Feature: User can view campaign details

    As a User
    In order to get details about the campaign
    I would like to see an information page for that campaign

   Scenario: Campaign details
        Given the following campaigns exists
        | title        | description                      | amount_raised |
        |Brain surgery | I grew up always helping others. | 1000.00       |
        And I visit the site
        When I click 'Brain surgery' 
        Then I should see 'Brain surgery'
        And I should see 'I grew up always helping others.'
        And I should see '1000'
        And I should see 'donate now'
        And I should see 'share on facebook'
        
         