class Enrollment < ApplicationRecord
  belongs_to :course_enrolled,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: :Course
end
