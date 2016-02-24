class Dealer < ActiveRecord::Base

  belongs_to :user
  has_many :cars

end