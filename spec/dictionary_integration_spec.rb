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
describe("The add definition page path", {:type => :feature}) do
  it("Takes the user to the add definition page") do
    visit('/')
    fill_in('inputted_word', :with => "Squirrel")
    click_on("Submit Your Word")
    click_on("Squirrel")
    fill_in("definition", :with => "Gatherer")
    click_on("Add Definition")
    expect(page).to have_content("Gatherer")
  end
end

describe("The home path", {:type => :feature}) do
  it("Takes the user to the index page") do
    visit('/')
    fill_in('inputted_word', :with => "Fox")
    click_on("Submit Your Word")
    click_on("Fox")
    click_on("Home")
    expect(page).to have_content("Dictionary")
  end
end
