Given('I click {string}') do |link|
    click_on link
end

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
