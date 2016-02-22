class Car < ActiveRecord::Base
  validates :make, presence: true, uniqueness: true
  validates :model, presence: true, uniqueness: true
  validates :year, presence: true, uniqueness: true
  validates :price, presence: true
  validates :dealer_id, presence: true
  validates :image, presence: true
end