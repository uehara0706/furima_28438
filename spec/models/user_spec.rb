require 'rails_helper'
RSpec.describe User, type: :model do

  before do
    @user = FactoryBot.build(:user)
    @another_user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    # context do
    it "nicknameが空だと登録できない" do
      @user.nickname = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
  end
    it "emailが空では登録できない" do
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
    it "emailに＠が含まれてないと登録できない" do
      @user.email = "aaa.com"
      @user.valid?
      expect(@user.errors.full_messages).to include("Email is invalid")
    end
    it "passwordが空だと登録できない" do
      @user.password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end
    it "passwordに英数字が含まれてないと登録できない" do
     @user.password = "aaaaaa"
     @user.valid?
     expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
     it "passwordの確認が空だと登録できない" do
      @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password", "Password confirmation can't be blank")
    end
    it "苗字が空だと登録できない" do 
      @user.first_name = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("First name can't be blank", "First name is invalid")
    end
    it "名前が空だと登録できない" do
      @user.last_name = ""     
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name can't be blank", "Last name is invalid")   
    end
    it "苗字のカナが空だと登録できない" do
      @user.first_name_kana = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("First name kana can't be blank", "First name kana is invalid")
    end
    it "名前のカナが空だと登録できない" do
      @user.last_name_kana = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name kana can't be blank", "Last name kana is invalid")
    end
    it "生年月日が空だと登録できない" do
      @user.birth_date = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Birth date can't be blank")
    end
    it "重複したemailが存在する場合登録できない" do
      @user.email = "1@gmail.com"
      @another_user.email = "1@gmail.com"
      @user.save
      @another_user.valid?
      expect(@another_user.errors.full_messages).to include("Email has already been taken")
    end
    it "passwordが5文字以下であれば登録できない" do
      @user.password = "00000"
      @user.password_confirmation = "00000"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end
    it 'last_name_kanaがカタカナでないと登録できない' do
      user = FactoryBot.build(:user, last_name_kana: "kana")
      user.valid?
      expect(@user.errors.full_messages).to include()
    end
    it 'first_name_kanaがカタカナでないと登録できない' do
      user = FactoryBot.build(:user, first_name_kana: "kana")
      user.valid?
      expect(@user.errors.full_messages).to include()
    end
    it "nicknameがあれば登録できる" do
      @user.nickname = "aaaaaa"
      expect(@user).to be_valid
    end
    it "passwordが6文字以上で英数字を含んでいれば登録できる" do
      @user.password = "aaa111"
      @user.password_confirmation = "aaa111"
      expect(@user).to be_valid
    end
    it "メールアドレスが＠を含んでいれば登録できる" do
     @user.email = "aa@aa.com"  
     expect(@user).to be_valid
    end
    it "first_nameがあれば登録できる" do
     @user.first_name = "あ"
     expect(@user).to be_valid
    end
    it "last_nameがあれば登録できる" do
     @user.last_name = "あ"
     expect(@user).to be_valid
    end
    it "first_name_kanaがカナであれば登録できる" do
     @user.first_name_kana = "ア"
     expect(@user).to be_valid
    end
    it "last_name_kanaがカナであれば登録できる" do
     @user.last_name_kana = "ア"
     expect(@user).to be_valid
    end
    it "birth_dateがあれば登録できる" do
     @user.birth_date = "1930-01-01"
     expect(@user).to be_valid
    end
  end
end
