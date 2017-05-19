class Vote < ActiveRecord::Base
  belongs_to :voteable, polymorphic: true
  belongs_to :user

  validates :id, :uniqueness => {:scope => [:voteable_id, :voteable_type, :user_id]}
end
