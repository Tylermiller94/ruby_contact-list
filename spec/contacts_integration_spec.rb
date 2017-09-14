require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('user creates a new contact', {:type => :feature}) do
  it('contacts first and last name is on screen') do
    visit('/')
    fill_in('first_name', :with => 'Tyler')
    fill_in('last_name', :with => 'Miller')
    fill_in('job_title', :with => 'NEET')
    fill_in('company', :with => 'Epicodus')
    fill_in('contact_type', :with => 'it')
    fill_in('street_address', :with => 'doesnt')
    fill_in('city', :with => 'have ')
    fill_in('state', :with => 'to')
    fill_in('zip', :with => 'be')
    fill_in('phone_number', :with => 'the')
    click_button('Add!')
    expect(page).to have_content("Tyler Miller")
  end
end
