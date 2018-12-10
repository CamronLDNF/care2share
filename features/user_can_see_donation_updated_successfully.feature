@javascript @stripe
Feature: User can see "Total raised" updated when donation successfully submitted

    As a User
    In order to confirm my donation
    I would like to see Total raised updated when donation successfully submitted


    Background: 
        Given the following campaign exists
		| title         | description                      | amount_raised |
		| Brain surgery | I grew up always helping others. | 1000          |

    Scenario: Use can see the amount updated by successful donation
        When I visit the "Brain surgery" site
        Then I should see 'I grew up always helping others.'
        And I should see '1000'
        When I click 'donate now'
        And I wait 2 seconds
        And I fill in 'Enter your donation' with '7000'
        And I fill in 'First name' with 'Hanna'
        And I fill in 'Last name' with 'Nyman'
        And I fill in 'Email' with 'hanna@tuna.se'
        And I fill in 'Postal code' with '123456'
        And I fill in the card form
        And I click 'Submit Payment'
        And I wait 3 seconds
        Then I should see 'Thank you for your donation!'
        Then I should see '8000'