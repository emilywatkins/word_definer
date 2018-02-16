require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word path', {:type => :feature}) do
  it('processes the user entry and returns on a new page with that word') do
    visit('/')
    fill_in('word', :with => 'squirrel')
    click_button('Submit')
    expect(page).to have_content('squirrel')
  end
end
