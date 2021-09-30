class Enrollment < ApplicationRecord
  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

    belongs_to :course_enrollment,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: :Course 
end
