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
describe("The add definition page path", {:type => :feature}) do
  it("Takes the user to the add definition page") do
    visit('/')
    fill_in('inputted_word', :with => "Cat")
    click_on("Submit Your Word")
    click_on("Cat")
    expect(page).to have_content("Cat")
  end
end

# fill_in("definition", :with => "Couch killing machine")
# click_on("Add Definition")
# expect(page).to have_content("Couch killing machine")
