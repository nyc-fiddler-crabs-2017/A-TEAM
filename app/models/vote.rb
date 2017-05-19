class Vote < ActiveRecord::Base
  belongs_to :voteable, polymorphic: true
  belongs_to :user, foreign_key: :user_id
end
