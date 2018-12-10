Then('I should see {string}') do |content|
    expect(page).to have_content content
end

Then('I should be on the index page') do
    visit root_path
end
  
Then("I should be on my admin page") do
    visit admin_path
end

Then("I should not see {string}") do |content|
    expect(page).to have_no_content content
end
  