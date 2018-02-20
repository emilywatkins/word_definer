require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the add word path', {:type => :feature}) do
  it('processes the user entry and adds that entry to a list on the same page') do
    visit('/')
    fill_in('word', :with => 'squirrel')
    click_button('Submit')
    expect(page).to have_content('squirrel')
  end
end

describe('the definition path', {:type => :feature}) do
  it('returns inputted word on new page') do
    visit('/')
    fill_in('word', :with => 'squirrel')
    click_link('squirrel')
    expect(page).to have_content('squirrel')
  end
end

describe('the add definition path', {:type => :feature}) do
  it('returns inputted definition on same page') do
    visit('/@entry')
    fill_in('definition', :with => 'woodland animal')
    click_button('Add definition')
    expect(page).to have_content('woodland animal')
  end
end
