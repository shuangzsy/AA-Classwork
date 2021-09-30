class User < ApplicationRecord


    has_many :course_enrolled,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: :Course

    has_many :enrollments,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :Enrollment

end
