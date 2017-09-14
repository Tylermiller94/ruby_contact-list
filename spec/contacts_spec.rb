require('rspec')
require('contacts')

describe(".all") do
    it("is empty at first") do
      expect(Contact.all()).to(eq([]))
    end
  end
describe("#save") do
  it("saves contact to a list of contacts") do
    contact = Contact.new({:first_name => "Tyler", :last_name =>"Miller", :job_title => "NEET", :company => "Epicodus", :contact_type => "professional", :street_address => 3429, :city => "Sarasota", :state => "Florida", :zip => 34231, :phone_number => 9419234565})
    contact.save()
    expect(Contact.all()).to(eq([contact]))
  end
end
