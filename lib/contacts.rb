class Contact
  attr_accessor(:first_name, :last_name, :job_title, :company, :contact_type, :street_address, :city, :state, :zip, :phone_number)
  @@contacts = []
  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @contact_type = attributes.fetch(:contact_type)
    @street_address = attributes.fetch(:street_address)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
    @phone_number = [attributes.fetch(:phone_number)]
  end

  def save()
    @@contacts.push(self)
  end

  def add_phone_number(phone_number)
    self.phone_number.push(phone_number)
  end

  def self.all()
    @@contacts
  end

  def self.empty()
    @@contacts = []
  end

  def self.find_by_last_name(last_name)
    @@contacts.each do |contact|
      if contact.last_name == last_name
        return contact
      end
    end
  end

end
