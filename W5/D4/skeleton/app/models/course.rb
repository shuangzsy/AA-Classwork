class Course < ApplicationRecord
  has_many :enrolled_students,
  primary_key: :id,
  foreign_key: :course_id,
  class_name: :User
end
