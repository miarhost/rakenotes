class Comment < ApplicationRecord

belongs_to :user
belongs_to :post, dependent: :destroy

validates :author, presence: true 
validates :body, presence: true, length: { minimum: 2, maximum: 450 }


end
