class User < ActiveRecord::Base

  include BCrypt

  validates :user_name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  has_and_belongs_to_many :cars

  has_secure_password
end