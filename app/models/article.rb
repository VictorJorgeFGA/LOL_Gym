class Article < ApplicationRecord
    enum article_type: {
        news: 0,
        game_update: 1,
        champion_guide: 2,
        item_guide: 3,
        game_route_guide: 4,
        game_mode_guide: 5
    }, _prefix: :article_type
    

end
