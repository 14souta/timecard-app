class Timecard < ApplicationRecord
  has_one :start_time
  has_one :stop_time
  belongs_to :user
end
