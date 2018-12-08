@javascript @stripe
Feature: User can donate via a form

    As a User
    In order to donate
    I would like to see a donate form

    Scenario: User can access the donation form to make a donation 

        Given the following campaign exists
        | title         | description                      | amount_raised |
        | Brain surgery | I grew up always helping others. | 1000.00       |

        And I visit the 'Brain surgery' site
        And I should see 'I grew up always helping others.'
        And I should see '1000'
        When I click 'donate now'
        # Then stop
        # And I fill in 'Amount' with '500'
        # And I fill in 'First name' with 'Hanna'
        # And I fill in 'Last name' with 'Nyman'
        # And I fill in 'Your email' with 'hanna@tuna.se'
        # And I fill in 'Postal code' with '123456'
        # And I click 'Proceed to pay'
        And I fill in the payment form
        And I click 'Submit Payment'