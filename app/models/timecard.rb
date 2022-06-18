class Timecard < ApplicationRecord
  belongs_to :user
  has_many :employee
  


end
