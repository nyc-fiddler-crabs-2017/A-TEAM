class Question < ActiveRecord::Base
  # Remember to create a migration!
  validates :text, presence: true
  belongs_to :user
  validates :user, presence: true
  has_many :answers
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable
end
