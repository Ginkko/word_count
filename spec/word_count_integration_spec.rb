require('capybara/rspec')
require('pry')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("The path to the word_count page", {:type => :feature}) do
  it("Presents the user with two text prompts and a submit button which will take the user to a page containing a score based on the number of matching words.") do
    visit('/')
    fill_in("master_word", :with => "spam")
    fill_in("master_sentence", :with => "Spam! Spam! Spam! Spam! Lovely Spam! Lovely Spam!")
    expect(page).(to(have_content('6'))
  end
end
