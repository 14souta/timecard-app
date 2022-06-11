class Timecard < ApplicationRecord
  belongs_to :user
  belongs_to :employee
  has_one :start
  has_one :stop


end
