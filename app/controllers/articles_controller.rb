class ArticlesController < ApplicationController
    before_action :authenticate_user!, except: [:show]
    before_action :retrieve_article, except: [:new, :create]

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)

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
        params.require(:article).permit(:title, :body)
    end

    def retrieve_article
        @article = Article.find_by id: params[:id]
        unless @article
            redirect_to root_path
        end
    end
end
