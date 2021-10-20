class Sub < ApplicationRecord
  validates :title, :description, :moderator_id, presence: true
  validates :title, :moderator_id, uniqueness:true

  belongs_to :moderator,
    primary_key: :id,
    foreign_key: :moderator_id,
    class_name: :User

  has_many :posts,
    primary_key: :id,
    foreign_key: :sub_id,
    class_name: :Post

end
