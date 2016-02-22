class Dealer < ActiveRecord::Base
  validates :user_name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :dealership, presence: true
end