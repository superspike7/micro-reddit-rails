class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 5..60 }
  validates :body, presence: true

  has_many :comments
  belongs_to :user
end
