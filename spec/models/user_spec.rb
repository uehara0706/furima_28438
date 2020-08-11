require 'rails_helper'
describe User, type: :model do
  it 'ユーザー新規登録' do
    it "nicknameが空だと登録できない" do
      user = User.new(nickname: "", email: "a@gmail.com", password: "00000000", password_confirmation: "00000000", first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", birth_date: "1930,1,1")
      user.valid?
      expect(user.errors.full_messages).to include("Nickname can't be blank")
    end
    it "emailが空では登録できない" do
      user = User.new(nickname: "a", email: "", password: "00000000", password_confirmation: "00000000", first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", birth_date: "1930,1,1")
      user.valid?
      expect(user.errors.full_messages).to include("Email can't be blank")
    end
    it "passwordが空だと登録できない" do
      user = User.new(nickname: "a", email: "a@gmail.com", password: "", password_confirmation: "00000000", first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", birth_date: "1930,1,1")
      user.valid?
      expect(user.errors.full_messages).to include("Password can't be blank")
    end
    it "passwordの確認が空だと登録できない" do
      user = User.new(nickname: "a", email: "a@gmail.com", password: "00000000", password_confirmation: "", first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", birth_date: "1930,1,1")
      user.valid?
      expect(user.errors.full_messages).to include("Password_confirmation can't be blank")
    end
    it "苗字が空だと登録できない" do
      user = User.new(nickname: "a", email: "a@gmail.com", password: "00000000", password_confirmation: "00000000", first_name: "", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", birth_date: "1930,1,1")
      user.valid?
      expect(user.errors.full_messages).to include("First_name can't be blank")
    end
    it "名前が空だと登録できない" do
      user = User.new(nickname: "a", email: "a@gmail.com", password: "00000000", password_confirmation: "00000000", first_name: "あ", last_name: "", first_name_kana: "ア", last_name_kana: "ア", birth_date: "1930,1,1")
      user.valid?
      expect(user.errors.full_messages).to include("Last_name can't be blank")   
    end
    it "苗字のカナが空だと登録できない" do
      user = User.new(nickname: "a", email: "a@gmail.com", password: "00000000", password_confirmation: "00000000", first_name: "あ", last_name: "あ", first_name_kana: "", last_name_kana: "ア", birth_date: "1930,1,1")
      user.valid?
      expect(user.errors.full_messages).to include("First_name_kana can't be blank")
    end
    it "名前のカナが空だと登録できない" do
      user = User.new(nickname: "a", email: "a@gmail.com", password: "00000000", password_confirmation: "00000000", first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "", birth_date: "1930,1,1")
      user.valid?
      expect(user.errors.full_messages).to include("Last_name_kana can't be blank")
    end
    it "生年月日が空だと登録できない" do
      user = User.new(nickname: "a", email: "a@gmail.com", password: "00000000", password_confirmation: "00000000", first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", birth_date: "")
      user.valid?
      expect(user.errors.full_messages).to include("Birth_date can't be blank")
    end
  end
end