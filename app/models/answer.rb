class Answer < ActiveRecord::Base
  validates :text, :user, :question, presence: true

  belongs_to :user
  belongs_to :question
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable

    def show_score
    sum = self.votes.reduce(0) do |sum,vote|
      sum + vote.value
    end
    sum
  end
end
