require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "Default article type is news" do
    Article.create({title: "My fancy article", body: "This is my fancy article!"}).save
    article = Article.last
    
    assert(article.article_type_news?, "An article was created not having type 'news' by default")
  end

  test "Test article's type" do
    article = Article.create({title: "My fancy article", body: "This is my fancy article!"})
    
    article.article_type_news!
    article.save
    article = Article.last
    assert article.article_type_news?, "Article type is not news after saving and retrieving"

    article.article_type_champion_guide!
    article.save
    assert Article.last.article_type_champion_guide?, "Article type is not 'champion guide' after saving and retrieving"
    
    article.article_type_game_update!
    article.save
    assert Article.last.article_type_game_update?, "Article type is not 'champion guide' after saving and retrieving"
    
    article.article_type_item_guide!
    article.save
    assert Article.last.article_type_item_guide?, "Article type is not 'champion guide' after saving and retrieving"
    
    article.article_type_game_route_guide!
    article.save
    assert Article.last.article_type_game_route_guide?, "Article type is not 'champion guide' after saving and retrieving"
    
    article.article_type_game_mode_guide!
    article.save
    assert Article.last.article_type_game_mode_guide?, "Article type is not 'champion guide' after saving and retrieving"
  end
end
