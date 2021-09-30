class Course < ApplicationRecord
  has_many :enrolled_students,
  primary_key: :id,
  foreign_key: :course_id,
  class_name: :User

  has_many :enrollments,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: :Enrollment 
end
