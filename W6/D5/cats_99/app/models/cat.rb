require 'action_view'
class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper
  COLORS = %w(white black gray yellow orange brown blue)
  validates :birth_date, :name, :description, presence: true
  validates :color, presence: true, inclusion: { in: COLORS,
    message: "%{value} is not a valid color" }
  validates :sex, presence: true, inclusion: { in: %w(F M),
    message: "%{value} is not a valid gender" }

  def age 
    time_ago_in_words(birth_date)
  end

end
