require 'rails_helper'
describe User, type: :model do
  before do
    @user = FactoryBot.built(:user)
  end

  describe 'ユーザー新規登録' do
    it "nicknameが空だと登録できない" do
      @user.nickname = ""
      @user.valid?
      expect(user.errors.full_messages).to include("Nickname can't be blank")
    end
    it "emailが空では登録できない" do
      @user.email = ""
      @user.valid?
      expect(user.errors.full_messages).to include("Email can't be blank")
    end
    it "passwordが空だと登録できない" do
      @user.password = ""
      @user.valid?
      expect(user.errors.full_messages).to include("Password can't be blank")
    end
    it "passwordの確認が空だと登録できない" do
      @user.password_confirmation = ""
      @user.valid?
      expect(user.errors.full_messages).to include("Password_confirmation can't be blank")
    end
    it "苗字が空だと登録できない" do 
      @user.first_name = ""
      @user.valid?
      expect(user.errors.full_messages).to include("First_name can't be blank")
    end
    it "名前が空だと登録できない" do
      @user.last_name = ""     
      @user.valid?
      expect(user.errors.full_messages).to include("Last_name can't be blank")   
    end
    it "苗字のカナが空だと登録できない" do
      @user.first_name_kana = ""
      @user.valid?
      expect(user.errors.full_messages).to include("First_name_kana can't be blank")
    end
    it "名前のカナが空だと登録できない" do
      @user.last_name_kana = ""
      @user.valid?
      expect(user.errors.full_messages).to include("Last_name_kana can't be blank")
    end
    it "生年月日が空だと登録できない" do
      @user.birth_date = ""
      @user.valid?
      expect(user.errors.full_messages).to include("Birth_date can't be blank")
    end
  end
end