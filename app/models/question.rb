class Question < ActiveRecord::Base
  # Remember to create a migration!
  validates :text, presence: true
  belongs_to :user
  validates :user, presence: true
  has_many :answers
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable

  def show_score
    sum = self.votes.reduce(0) do |sum,vote|
      sum + vote.value
    end
    sum
  end
end
