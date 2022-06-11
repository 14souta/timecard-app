class Start < ApplicationRecord

  validates :start_day, presence: true
  validates :start_time, presence: true

  belongs_to :timecard
end
