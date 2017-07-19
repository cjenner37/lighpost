class Comment < ApplicationRecord
  belongs_to :commentable
  belongs_to :user
  has_ancestry
  has_many :comments, as: :commentable
  validates :content, presence: true
end
