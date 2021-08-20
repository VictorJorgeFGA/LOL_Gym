require 'rails_helper'

RSpec.describe User, type: :model do

  describe "#admin?" do
    before do
      @user = User.create({email: 'user1@rails.com', password: 'usermaster982563', nickname: 'user1', admin: false})
    end

    it "when they're not admin" do
      @user.admin = false
      expect(@user.admin?).to be false
    end

    it "when they're admin" do
      @user.admin = true
      expect(@user.admin?).to be true
    end
  end

  describe "validates :nickname =>" do
    before do
      @user_attr = {email: 'user1@rails.com', password: 'imh4nds0m3'}
    end

    describe "presence: true" do
      it "when it's not present" do
        user_attrs = @user_attr.clone
        expect(User.create(user_attrs).errors[:nickname]).to include("can't be blank")
      end

      it "when it's present" do
        user_attrs = @user_attr.clone
        user_attrs[:nickname] = "user1"
        expect(User.create(user_attrs).errors[:nickname]).not_to include("can't be blank")
      end
    end

    describe "uniqueness: true =>" do
      it "when it's unique" do
        user_attrs = @user_attr.clone
        user_attrs[:nickname] = "user1"
        expect(User.create(user_attrs).errors[:nickname]).not_to include("has already been taken")
      end

      it "when it's not unique" do
        user_attrs = @user_attr.clone
        user_attrs[:nickname] = "user1"
        User.create(user_attrs)
        expect(User.create(user_attrs).errors[:nickname]).to include("has already been taken")
      end
    end

    describe "length = {minimum: 3, maximum: 20} =>" do
      it "when it's too short" do
        user_attrs = @user_attr.clone
        user_attrs[:nickname] = 'us'
        expect(User.create(user_attrs).errors[:nickname]).to include("is too short (minimum is 3 characters)")
      end

      it "when it's too long" do
        user_attrs = @user_attr.clone
        user_attrs[:nickname] = 'aaaaaaaaaaaaaaaaaaaaaaa'
        expect(User.create(user_attrs).errors[:nickname]).to include("is too long (maximum is 20 characters)")
      end

      it "when it's not too long and not too short" do
        user_attrs = @user_attr.clone
        user_attrs[:nickname] = 'user1'
        expect(User.create(user_attrs).errors[:nickname]).not_to include("is too short (minimum is 3 characters)", "is too long (maximum is 20 characters)")
      end
    end
  end
  describe "already_liked_article?" do
    before do
      @user = User.create({email: 'admin@example.com', password: 'Teste123', nickname: 'admin', admin: true})
      @user.save
      @article = @user.articles.create(title: "A great example of...", body: "First of all, we need to think about how to keep your enemies...", article_type: "news")
      @article.save
    end

    it "when didn't liked the article" do
      expect(@user.already_liked_article? @article).to be_falsey
    end

    it "when liked the article" do
      @article.likes.create(user_id: @user.id, is_positive: true)
      expect(@user.already_liked_article? @article).to be_truthy
    end
  end
end
