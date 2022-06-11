class Stop < ApplicationRecord

  validates :stop_day, presence: true
  validates :stop_time, presence: true

  belongs_to :timecard
end
