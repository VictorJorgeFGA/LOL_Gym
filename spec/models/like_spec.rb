require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validates :user, uniqueness: {scope: :likeable}" do
    fixtures :articles

    before do
      @article = articles(:one)
    end

    it "when it's not unique" do
      @article.likes.create(user_id: @article.user.id, is_positive: true)
      @article.likes.create(user_id: @article.user.id, is_positive: false)

      duplicated_like = @article.likes.last
      expect(duplicated_like.errors[:user].any?).to be_truthy
    end

    it "when it's unique" do
      @article.likes.create(user_id: @article.user.id, is_positive: true)

      valid_like = @article.likes.last
      expect(valid_like.errors[:user].any?).to be_falsey
    end
  end
end