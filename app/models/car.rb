class Car < ActiveRecord::Base
  validates :make, presence: true, uniqueness: true
  validates :model, presence: true, uniqueness: true
  validates :year, presence: true, uniqueness: true
  validates :price, presence: true

  belongs_to :dealer
  has_and_belongs_to_many :users
end