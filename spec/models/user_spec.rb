require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end

    it "nickname, email, password, password_confirmationが存在すれば登録できる" do
      expect(@user).to be_valid
    end
    
    it "nicknameが空では登録できないこと" do
      @user.nickname = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("ニックネームを入力してください")
    end

    it "introducitonが空でも登録できること" do
      @user.introduction = ""
      expect(@user). to be_valid
    end

    it "emailが空では登録できないこと" do
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("メールアドレスを入力してください")
    end

    it "重複したemailが存在する場合登録できないこと" do
      @user.save
      another_user = FactoryBot.build(:user, email: @user.email)
      another_user.valid?
      expect(another_user.errors.full_messages).to include("メールアドレスはすでに存在します")
    end
    
    it "emailに@が含まれていないと登録できないこと" do
      @user.email = "test"
      @user.valid?
      expect(@user.errors.full_messages).to include("メールアドレスは不正な値です")
    end
    
    it "passwordが空では登録できないこと" do
      @user.password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワードを入力してください")
    end
    
    it "passwordが5文字以下では登録できないこと" do
      @user.password = "12345"
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
    end
    
    it "passwordが存在してもpassword_confirmationが空では登録できないこと" do
      @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
    end
    
    it "passwordとpassword_confirmationが一致していないと登録できないこと" do
      @user.password ="123456"
      @user.password_confirmation ="234567"
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
    end
  end
end