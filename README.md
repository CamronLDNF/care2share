# **care2share**
-------
This project is an example of a fundraising service, allowing people to raise funds for causes they care about.

The site is [deployed here](https://agile-springs-93723.herokuapp.com/).

## Tech stack
-------
Languages & frameworks & tools used:
* Rails, HAML/SASS

Testing environment:
* Rspec with shoulda-matchers library
* Cucumber with Capybara

## How to test
-------
To launch the site:
* Run `rails s` in your terminal to start the Rails server, then in your browser navigate to `localhost:3000`

To test the app:
* Download the app folder
* In your terminal / CLI:
  * Run `bundle` to install all gems
  * Run `rails db:migrate` to do run all db migrations
  * Then run `rspec` for unit testing and `cucumber` for feature testing