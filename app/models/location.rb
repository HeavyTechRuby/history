class Location < ApplicationRecord
  has_many :stories, dependent: :destroy

  validates :address, presence: true, length: { minimum: 10 }
end
