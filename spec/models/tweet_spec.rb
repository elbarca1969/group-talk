require 'rails_helper'

RSpec.describe Tweet, type: :model do
  describe '#create' do
    before do
      @tweet = FactoryBot.build(:tweet)
    end

    it "contentとimageが存在すれば保存できること" do
      expect(@tweet).to be_valid
    end

    it "contentが空でも保存できること" do
      @tweet.content = nil
      expect(@tweet).to be_valid
    end

    it "imageが空でも保存できること" do
      @tweet.image = nil
      expect(@tweet).to be_valid
    end

    it "contentとimageが空では保存できないこと" do
      @tweet.content = nil
      @tweet.content = "\n"
      @tweet.image = nil
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include("Contentを入力してください")
    end

    it "userが紐付いていないと保存できないこと" do
      @tweet.user = nil
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include("Userを入力してください")
    end

    it "groupが紐付いていないと保存できないこと" do
      @tweet.group = nil
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include("Groupを入力してください")
    end
  end
end
