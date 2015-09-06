require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the palindrome path', {:type => :feature}) do
  it('processes a sentence and returns it as a palindrome') do
    visit('/')
    fill_in('sentence', :with => 'go hang a salami')
    click_button('Submit')
    expect(page).to(have_content('go hang a salamiimalas a gnah og'))
  end
end