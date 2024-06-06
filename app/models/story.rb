class Story < ApplicationRecord
  has_rich_text :body
  has_many :comments, dependent: :destroy

  validates :address, presence: true, length: { minimum: 10 }
end
