class Location < ApplicationRecord
  has_many :stories

  validates :address, presence: true, length: { minimum: 10 }
end
