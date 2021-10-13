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
FactoryBot.define do
  factory :user do
    username { Faker::Movies::HarryPotter.character } # assigns user to the result of the block
    goal { "Get a new westie" } # different syntax, same result
    password { "password" }
  end
end
