class Article < ApplicationRecord
    enum article_type: {
        news: 0,
        game_update: 1,
        champion_guide: 2,
        item_guide: 3,
        game_route_guide: 4,
        game_mode_guide: 5
    }, _prefix: :article_type
    
    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 50}
    # validates :article_type, presence: true, inclusion: {in: article_type}
end
