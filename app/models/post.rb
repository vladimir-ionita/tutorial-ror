class Post < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { minimum: 10 }

  has_many :comments
end
