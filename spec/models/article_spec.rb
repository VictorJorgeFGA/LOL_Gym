require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "user_can_write_this_type_of_article" do
    fixtures :articles, :users

    it "when user is an admin" do
      article_fields = {
        title: "Dummy article",
        body: "This is just a dummy article, don't worry about it. Sometimes you just have to ignore somethings",
        allows_comments: true,
        user_id: users(:admin).id
      }

      article = Article.new(article_fields.merge({article_type: :news}))
      article.valid?
      expect(article.errors[:base].any?).to be_falsey

      article = Article.new(article_fields.merge({article_type: :game_update}))
      article.valid?
      expect(article.errors[:base].any?).to be_falsey

      article = Article.new(article_fields.merge({article_type: :champion_guide}))
      article.valid?
      expect(article.errors[:base].any?).to be_falsey

      article = Article.new(article_fields.merge({article_type: :item_guide}))
      article.valid?
      expect(article.errors[:base].any?).to be_falsey

      article = Article.new(article_fields.merge({article_type: :game_route_guide}))
      article.valid?
      expect(article.errors[:base].any?).to be_falsey

      article = Article.new(article_fields.merge({article_type: :game_mode_guide}))
      article.valid?
      expect(article.errors[:base].any?).to be_falsey

      article = Article.new(article_fields.merge({article_type: :blog_policy}))
      article.valid?
      expect(article.errors[:base].any?).to be_falsey
    end

    it "when user is a guest one" do
      article_fields = {
        title: "Dummy article",
        body: "This is just a dummy article, don't worry about it. Sometimes you just have to ignore somethings",
        allows_comments: true,
        user_id: users(:guest_one).id
      }

      article = Article.new(article_fields.merge({article_type: :news}))
      article.valid?
      expect(article.errors[:base].any?).to be_truthy

      article = Article.new(article_fields.merge({article_type: :game_update}))
      article.valid?
      expect(article.errors[:base].any?).to be_truthy

      article = Article.new(article_fields.merge({article_type: :champion_guide}))
      article.valid?
      expect(article.errors[:base].any?).to be_falsey

      article = Article.new(article_fields.merge({article_type: :item_guide}))
      article.valid?
      expect(article.errors[:base].any?).to be_falsey

      article = Article.new(article_fields.merge({article_type: :game_route_guide}))
      article.valid?
      expect(article.errors[:base].any?).to be_falsey

      article = Article.new(article_fields.merge({article_type: :game_mode_guide}))
      article.valid?
      expect(article.errors[:base].any?).to be_falsey

      article = Article.new(article_fields.merge({article_type: :blog_policy}))
      article.valid?
      expect(article.errors[:base].any?).to be_truthy
    end
  end

  describe "number_of_likes" do
    fixtures :articles, :users

    it "when no one likes it" do
      article = articles(:one)
      article.likes.create(user_id: users(:admin), is_positive: false)

      expect(article.number_of_likes).to be 0
    end

    it "when two people like it" do
      article = articles(:one)
      article.likes.create(user_id: users(:admin).id, is_positive: true)
      article.likes.create(user_id: users(:guest_one).id, is_positive: true)

      expect(article.number_of_likes).to be 2
    end
  end

  describe "number_of_dislikes" do
    fixtures :articles, :users

    it "when no one dislikes it" do
      article = articles(:one)
      article.likes.create(user_id: users(:admin), is_positive: true)

      expect(article.number_of_dislikes).to be 0
    end

    it "when two people like it" do
      article = articles(:one)
      article.likes.create(user_id: users(:admin).id, is_positive: false)
      article.likes.create(user_id: users(:guest_one).id, is_positive: false)

      expect(article.number_of_dislikes).to be 2
    end
  end
end
