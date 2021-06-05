class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable 

  validates :nickname, presence: true, uniqueness: true, length: {minimum: 3, maximum: 20}

  has_many :articles, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  def already_liked_article? article
    if likes.find_by(article_id: article.id)
      return true
    else
      return false
    end
  end
end
