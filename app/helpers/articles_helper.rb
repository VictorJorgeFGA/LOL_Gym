module ArticlesHelper
    def user_can_modify_this_article?(user, article)
        if user == nil
            return false
        end
        
        if user.admin? or article.user_id == user.id
            return true
        else
            return false
        end
    end
end
