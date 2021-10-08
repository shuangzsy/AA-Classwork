require 'action_view'
class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper
  validates :birth_date, presence: true
  def age 
    time_ago_in_words(birth_date)
    # now = Date.parse(Time.now.utc).year
    # birthday = Date.parse(self.birth_date).year
    
    # return now - birthday
  end

end
