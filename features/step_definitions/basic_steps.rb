When('I visit the site') do
    visit root_path
end

When('I click {string}') do |value|
   click_on value
end

When('I fill in {string} with {string}') do |field, input|
    fill_in field, with: input
end

Given('the following user exists') do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

When('stop') do
    binding.pry
end

Then('show me the page') do
    save_and_open_page
end
