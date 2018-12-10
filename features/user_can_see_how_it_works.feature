Feature: How it works
    As a User
    In order to understand how to donate
    I would like to see a page with information about how it works

    Scenario: User can see page with information about How it works
        When I visit the site
        And I click 'How it works' 
        Then I should see 'How Care2Share works' 
        And I should see 'Step One: Create Your Fundraising Campaign'
        And I should see 'Step Two: Share with Family and Friends'
        And I should see 'Step Three: Easily Accept Donations'
        And I should see 'Step Four: Enjoy the Results'
        Then I click 'Sign up & start a campaign today!'
        And I should see 'Sign up'
