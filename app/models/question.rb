class Question < ActiveRecord::Base
  # Remember to create a migration!
  validates :text, presence: true
  belongs_to :user
  validates :user, presence: true
end
