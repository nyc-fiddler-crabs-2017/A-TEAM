class Answer < ActiveRecord::Base
  # Remember to create a migration!
  validates :text, :user, :question, presence: true

  has_many :votes as: :voteable
  has_many :comments as: :commentable
end
