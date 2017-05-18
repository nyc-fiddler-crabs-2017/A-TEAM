class User < ActiveRecord::Base
  include BCrypt
  has_secure_password
  has_many :votes
  has_many :questions
  has_many :answers
  has_many :comments

  validates :password_digest, :email, :username, presence: true
  validates :email, :username, uniqueness: true
end
