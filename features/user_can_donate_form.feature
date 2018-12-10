@javascript @stripe
Feature: User can donate via a form

    As a User
    In order to donate
    I would like to see a donate form

    Scenario: User can access the donation form to make a donation

    Given the following campaign exists
    | title         | description                      | amount_raised |
    | Brain surgery | I grew up always helping others. | 1000.00       |

    When I visit the "Brain surgery" site
    Then I should see 'I grew up always helping others.'
    And I should see '1000'
    When I click 'donate now'
    And I wait 2 seconds
    And I fill in 'Enter your donation' with '500'
    And I fill in 'First name' with 'Hanna'
    And I fill in 'Last name' with 'Nyman'
    And I fill in 'Email' with 'hanna@tuna.se'
    And I fill in 'Postal code' with '123456'
    And I fill in the card form
    And I click 'Submit Payment'
    And I wait 3 seconds
    Then I should see 'Thank you for your donation!'