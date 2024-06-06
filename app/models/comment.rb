class Comment < ApplicationRecord
  belongs_to :story

  validates :body, presence: true
  validates :body, length: { in: 10..255 }
end
