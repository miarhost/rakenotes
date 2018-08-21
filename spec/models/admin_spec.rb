require 'rails_helper'

RSpec.describe Admin, type: :model do

	before do
		subject { Admin.new(:name => "Admin", :email => "example@mail.com",:password => "example", :password_confirmation => "example")}
    end

  describe "ActiveModel validations" do
   context "it should not login without valid attributes"
   expect(subject.email).to eq(nil)
    expect(subject).not_to be_valid 
 end
end
end
