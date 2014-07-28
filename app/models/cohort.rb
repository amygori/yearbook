class Cohort < ActiveRecord::Base
    has_many :users

  def to_s
    "#{season} - #{year}"
  end
end
