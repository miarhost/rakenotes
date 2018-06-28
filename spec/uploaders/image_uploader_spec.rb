require 'rails_helper'

RSpec.describe ImageUploader, type: :uploader do

before do
 subject { User.new(:name => "User", :email => "user@example.com", :image => nil) }
end

before (:each) do
 @imageuploader = ImageUploader.new
  @image = subject.image
end

it "should upload image" do
 expect(@imageuploader).to :upload(Image.new :image_url)
 expect(responce).to have_http_status(200)
end

it 'should create and store an image' do
 expect(response).to response_with_content_type(:image)
 expect(@image.url).to eq(:image_cache)
end

 describe "#store_dir" do
   it 'should store to a directory' do
    expect(@imageuploader.store_dir).to eq("uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}")   
    expect(responce).to be_success
   end
  end

end
