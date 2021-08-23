class Article < ApplicationRecord
    belongs_to :user
    has_many :likes, as: :likeable, dependent: :destroy
    has_many :comments, dependent: :destroy

    enum article_type: {
        news: 0,
        game_update: 1,
        champion_guide: 2,
        item_guide: 3,
        game_route_guide: 4,
        game_mode_guide: 5,
        blog_policy: 6
    }, _prefix: :article_type

    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 50}
    validates :article_type, presence: true
    validate :user_can_write_this_type_of_article

    def user_can_write_this_type_of_article
        if !user.admin? && (article_type_news? || article_type_game_update? || article_type_blog_policy?)
            errors.add(:base, :invalid, message: "You don't have permission to write this type of article!")
        end
    end

    def number_of_likes
        likes.where(is_positive: true).count
    end

    def number_of_dislikes
        likes.where(is_positive: false).count
    end
end
