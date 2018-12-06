Feature: User can donate via a form 

    As a User
    In order to donate
    I would like to see a donate form
    
    Scenario: User can access the donation form to make a donation
        Given the following campaigns exists
        | title         | description                      | amount_raised |
        | Brain surgery | I grew up always helping others. | 1000.00       |
     
        And I visit the 'Brain surgery' site
        And I should see "I grew up always helping others."
        And I should see "1000"
        When I click "Donate now"
        And I fill in "Enter your Donation" field with "500"
        And I fill in "First name" field with "Hanna"
        And I fill in "Last name" field with "Nyman"
        And I fill in "Email" field with "hanna@tuna.se"
        And I fill in "Postal code" field with "123456"
        And I click "Proceed to pay"
