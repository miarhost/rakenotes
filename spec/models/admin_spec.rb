require 'rails_helper'

RSpec.describe Admin, type: :model do
  
  describe "ActiveModel validations" do
   context "it should not login without valid attributes"
   expect(subject.email).to eq(nil)
    expect(subject).not_to be_valid 
 end
end
end
