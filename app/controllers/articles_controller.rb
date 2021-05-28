class ArticlesController < ApplicationController
    before_action :authenticate_user!, except: [:show]
    before_action :retrieve_article, except: [:new, :create]
    before_action :check_user_credentials, only: [:edit, :update, :destroy]

    def new
        @article = current_user.articles.build
        @article.article_type = params[:section]

        unless @article.article_type
            redirect_to root_path
        end
    end

    def create
        @article = current_user.articles.create(article_params)

        if @article.save
            redirect_to @article
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @article.update(article_params)
            redirect_to @article
        else
            render :edit
        end
    end

    def show
    end

    def destroy
        @article.destroy
        redirect_to root_path
    end

    private
    def article_params
        params.require(:article).permit(:title, :body, :article_type)
    end

    def retrieve_article
        @article = Article.find_by id: params[:id]
        unless @article
            redirect_to root_path
        end
    end

    def check_user_credentials
        unless helpers.user_can_modify_this_article?(current_user, @article)
            redirect_to root_path
        end
    end
end
