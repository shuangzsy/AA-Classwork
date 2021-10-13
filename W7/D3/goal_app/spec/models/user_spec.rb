# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  goal            :text             not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'rails_helper'

RSpec.describe User, type: :model do

  describe "presence" do
    it { should validate_presence_of(:username)}
    it { should validate_presence_of(:goal)}
    it { should validate_presence_of(:password_digest)}
    it { should validate_presence_of(:session_token)}
    it { should validate_length_of(:password).is_at_least(6)}
  end

  describe "uniqueness" do
    before :each do
      create(:user)
    end
    it {should validate_uniqueness_of(:username)}
    it {should validate_uniqueness_of(:session_token)}
  end

  # describe "User#password=(password)" do
  #   it "set an instance variable @password"
  describe "User#is_valid_password?" do
    let!(:user) {create(:user)} 

    context "valid password" do
      it "returns true"  do
        expect(user.is_valid_password?('password')).to be true
      end
    end

    context "invalid password" do 
      it "returns false" do
        expect(user.is_valid_password?('123456')).to be false
      end
    end
  end


end
