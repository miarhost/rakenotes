require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

before do

 it "sets comments with parameters" do
	expect(:valid_attributes).to_eql Post.comment.build(author: "Username", body: "Usertext")
 end
end

describe "GET #create" do
 context "with valid attributes" do

 	it "creates new Comment" do
 	 expect {
 	 	comment :create, params: {comment: :valid_attributes}
 	 }
    expect(response).to redirect_to(:post)
    end
  end
end

end