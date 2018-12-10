Feature: User can view campaign details

    As a User
    In order to get details about the campaign
    I would like to see an information page for that campaign

    Background:
        Given the following campaign exists
        | title         | description                      | amount_raised |
        | Brain surgery | I grew up always helping others. | 1000.00       |

   Scenario: Campaign details
        When I visit the site
        And I click 'Brain surgery' 
        Then I should see 'Brain surgery'
        And I should see 'I grew up always helping others.'
        And I should see '1000'
        And I should see 'Donate now'        
         