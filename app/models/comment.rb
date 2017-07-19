class Comment < ApplicationRecord
  belongs_to :commentable
  belongs_to :user
  has_many :comments, as: :commentable
  validates :content, presence: true
end
