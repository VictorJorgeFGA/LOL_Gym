class LikesController < ApplicationController
    before_action :authenticate_user!
    before_action :find_article

    def create
        if not current_user.already_liked_article? @article
            @article.likes.create({user_id: current_user.id})
        end
        redirect_to @article
    end

    def destroy
        if current_user.already_liked_article? @article
            @article.likes.find_by({user_id: current_user.id}).destroy
        end
        redirect_to @article
    end

    private
    def find_article
        @article = Article.find(params[:article_id])
    end
end