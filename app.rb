require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/item')
require('.lib/list')


get('/')do

  erb(:index)
end

post('/') do
  @first_name = pararms["first_name"]
  @last_name = pararms["last_name"]
  job_title = params["job_title"]
  company = params["company"]
  contact_type = params["contact_type"]
  street_address = params["street_address"]
  city = params["city"]
  state = params["state"]
  zip = params["zip"]
  phone_number = ["phone_number"]
  contact = Contact.new({:first_name => first_name, :last_name => last_name, :job_title => job_title, :company => company, :contact_type => contact_type, :street_address => street_address, :city => city, :state => state, :zip => zip, :phone_number => phone_number})

  erb(:index)
end
