class Comment < ApplicationRecord
  validates :author, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 20 }
  validates :body, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 200 }
  validates :user_id, presence: true
  validates :post_id, presence: true

  belongs_to :user
  belongs_to :post
end
