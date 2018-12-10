Feature: User can see the campaigns on index page

	As a User
	In order to know which campaigns I can donate to
	I would like to see a list of available campaigns on the index page

	Scenario: User can see the campaigns on index page
		Given the following user exists
		| firstname | lastname | email            |
		| Hanna     | Nyman    | hanna@random.com |
		
		Given the following campaign exists
		| title         | description                      | amount_raised |
		| Brain surgery | I grew up always helping others. | 1000.00       |

		And I visit the site
		Then I should see 'Brain surgery'
		And I should see 'I grew up always helping others.'
		And I should see '1000'   
      
