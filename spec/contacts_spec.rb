require('rspec')
require('contacts')

describe(".empty") do
  it("empties contact array") do
    contact = Contact.new({:first_name => "Kristen", :last_name =>"Kulha", :job_title => "NEET", :company => "Epicodus", :contact_type => "professional", :street_address => 3429, :city => "Sarasota", :state => "Florida", :zip => 34231, :phone_number => 9419234565})
    contact.save
    Contact.empty()
    expect(Contact.all).to(eq([]))
  end
end
describe(".all") do
    it("is empty at first") do
      expect(Contact.all()).to(eq([]))
    end
  end
describe("#save") do
  it("saves contact to a list of contacts") do
    contact1 = Contact.new({:first_name => "Kristen", :last_name =>"Kulha", :job_title => "NEET", :company => "Epicodus", :contact_type => "professional", :street_address => 3429, :city => "Sarasota", :state => "Florida", :zip => 34231, :phone_number => 9419234565})
    contact1.save()
    expect(Contact.all()).to(eq([contact1]))
  end
end

describe("#.find_by_last_name") do
  it("finds contact by last name") do
    contact = Contact.new({:first_name => "Tyler", :last_name =>"Miller", :job_title => "NEET", :company => "Epicodus", :contact_type => "professional", :street_address => 3429, :city => "Sarasota", :state => "Florida", :zip => 34231, :phone_number => 9419234565})
    contact.save()
    expect(Contact.find_by_last_name("Miller")).to(eq(contact))
  end
end
