require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("The add word path", {:type => :feature}) do
  it("Takes the users word input and adds it to the page") do
    visit('/')
    fill_in('inputted_word', :with => "Dog")
    click_on("Submit Your Word")
    visit('/')
    expect(page).to have_content("Dog")
  end
end
