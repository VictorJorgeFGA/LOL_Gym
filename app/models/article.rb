class Article < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy

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
    validate :author_has_privileges_to_write_this_type_of_article

    def author_has_privileges_to_write_this_type_of_article
        if not user.admin? and (article_type_news? or article_type_game_update?) 
            errors.add(:base, :invalid, message: "You don't have permission to write this type of article!")
        end
    end

    def number_of_likes
        return likes.count
    end
end
