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

  it 'test feed route' do
    visit('/')
    fill_in('name', :with => 'Fluffy')
    click_button('Feed')
    expect(Pet.pet.food()[:level]).to eq(11)
  end

  it 'test rest route' do
    visit('/')
    fill_in('name', :with => 'Fluffy')
    click_button('Rest')
    expect(Pet.pet.rest()[:level]).to eq(11)
  end

  it 'test activity route' do
    visit('/')
    fill_in('name', :with => 'Fluffy')
    click_button('Activity')
    expect(Pet.pet.activity()[:level]).to eq(11)
  end

end
