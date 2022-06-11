class Employee < ApplicationRecord

  validates :family_name, presence: true
  validates :first_name, presence: true

  belongs_to :user
  has_many :timecards
end
