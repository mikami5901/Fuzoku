class Schedule < ApplicationRecord
    has_many :reserves
    belongs_to :girl

    validates :work_day, presence: true
  validates :start_time, presence: true
  validates :finish_time, presence: true
end
