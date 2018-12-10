Given('I click {string}') do |link|
    click_on link
end

# Given('I click button {string}') do |link|
#     click_button link
# end

When('I fill in {string} with {string}') do |field, input|
    fill_in field, with: input
end

When('I visit the site') do
    visit root_path
end

When('stop') do
    binding.pry
end

Then('show me the page') do
    save_and_open_page
end

When('I have logged in') do
    steps %{
        Given I click 'Log in'
        And I fill in 'Email' with 'hanna@random.com'
        And I fill in 'Password' with 'password'
        And I click 'Log in'
    }
end

Given('I visit the {string} site') do |value|
    campaign = Campaign.find_by(title: value)
    visit campaign_path(campaign[:id])
end

And('I fill in the card form') do
    card_no = '4242424242424242'
    stripe_iframe = find("iframe[name='__privateStripeFrame4']", visible: false)

    within_frame stripe_iframe do
        find_field('cardnumber').send_keys(card_no)
        find_field('exp-date').send_keys('1221')
        find_field('cvc').send_keys('123')
        find_field('postal').send_keys('11310')
    end
end

Given('I wait {int} seconds') do |int|
    sleep int
end