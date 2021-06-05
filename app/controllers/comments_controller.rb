class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @article.comments.create({content: params[:comment][:content], user_id: current_user.id})

        redirect_to @article
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy

        redirect_to @comment.article
    end
end