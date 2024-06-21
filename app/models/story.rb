class Story < ApplicationRecord
  has_rich_text :body
  has_many :comments, dependent: :destroy
  belongs_to :location

  validates :address, presence: true, length: { minimum: 10 }

  before_validation :set_location

  private

  def set_location
    location = Location.find_by(address: self.address)

    if location
      self.location = location
    else
      self.location = Location.create(address: self.address)
    end
  end
end
