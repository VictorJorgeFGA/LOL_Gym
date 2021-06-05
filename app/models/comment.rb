class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article

  validates :user, presence: true
  validates :article, presence: true
  validates :content, presence: true, length: { minimum: 1, maximum: 250 }
end
