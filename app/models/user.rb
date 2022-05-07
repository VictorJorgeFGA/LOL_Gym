class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  validates :nickname, presence: true, uniqueness: true, length: {minimum: 3, maximum: 20}

  has_many :articles, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  def already_liked_article? article
    likes.find_by(likeable_id: article.id, likeable_type: article.class.to_s).present?
  end

  def self.from_omniauth(access_token)
    binding.pry

    user_data = access_token.info
    user = User.where(email: user_data['email']).first
    user = User.create(email: user_data['email'], nickname: user_data['name'], password: Devise.friendly_token(20)) unless user.present?

    user
  end
end
