class User < ActiveRecord::Base
  # validates :user_name, presence: true, uniqueness: true
  # validates :email, presence: true, uniqueness: true
  # validates :password, presence: true

  has_and_belongs_to_many :cars
end