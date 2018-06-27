require 'rails_helper'

RSpec.describe ImageUploader, type: :uploader do

before (:each) do
 @imageuploader = ImageUploader.new
end

it "should upload image" do
 expect(@imageuploader).to :upload(Image.new :image_url)
 expect(responce).to have_http_status(200)
end

 describe "#store_dir" do
   it 'should store to a directory' do
    expect(@imageuploader.store_dir).to eq("uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}")   
    expect(responce).to be_success
   end
  end

end
