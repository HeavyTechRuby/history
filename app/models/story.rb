class Story < ApplicationRecord
  has_rich_text :body
  validates :address, presence: true, length: { minimum: 10 }
end
