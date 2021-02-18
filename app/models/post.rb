class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 20 }
  validates :body, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 500 }

  belongs_to :user
  has_many :comments
end
