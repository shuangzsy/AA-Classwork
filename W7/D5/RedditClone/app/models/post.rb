class Post < ApplicationRecord
  validates :title, :sub_id, presence: true
  validates :url, uniqueness: true

  belongs_to :sub,
    primary_key: :id,
    foreign_key: :sub_id,
    class_name: :Sub

  belongs_to :author,
  through: :sub,
  source: :moderator

  

  

  
end
