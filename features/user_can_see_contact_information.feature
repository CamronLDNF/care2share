Feature: User can see contact information

    As a User
    In order to contact Care 2 share
    I would can see the contact information

    Scenario: User can see contact information
        When I visit the site
        Then I should see 'Contact Us'
        Then I should see 'support@care2share.com'
        Then I should see '+46 555 5555'