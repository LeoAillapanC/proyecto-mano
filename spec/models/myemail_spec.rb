require 'rails_helper'

RSpec.describe Myemail, type: :model do


	it{ should	validate_presence_of :email}
	it{ should	validate_uniqueness_of :email}

	it "should not create with invalid email" do
		email = Myemail.new(email:"orphen.xph16@gmail.com")
		expect(email.valid?).to be_truthy
	end

end
