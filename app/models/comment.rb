class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article
  has_many :likes, as: :likeable, dependent: :destroy

  validates :user, presence: true
  validates :article, presence: true
  validates :content, presence: true, length: { minimum: 1, maximum: 250 }
end
