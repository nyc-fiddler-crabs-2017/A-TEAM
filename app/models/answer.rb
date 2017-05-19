class Answer < ActiveRecord::Base
  validates :text, :user, :question, presence: true

  belongs_to :user
  belongs_to :question
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable
end
