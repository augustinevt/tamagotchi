require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'root route', {:type => :feature} do
  it 'creates a new pet' do
    visit('/')
    fill_in('name', :with => 'Fluffy')
    click_button('Make Pet')
    expect('Fluffy')
  end
end
