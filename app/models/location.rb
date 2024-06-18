class Location < ApplicationRecord
  has_many :stories

  validates :address, presence: true
end
