class Post < ApplicationRecord

belongs_to :user
has_many :messages
validates :title, :body, presence: true
 
end
