class Girl < ApplicationRecord
    has_many :schedules, -> { order("work_day asc") }
    has_many :options
    has_many :yoyakus
    has_many :bookings
    has_one :tag
    mount_uploader :girl_picture, PictureUploader

    validates :name, presence: true
    validates :age, presence: true
    validates :height, presence: true
    validates :bust, presence: true
    validates :bust_cup, presence: true
    validates :hip, presence: true
    validates :message, presence: true
    validates :tag_a, presence: true
    validates :tag_b, presence: true
    validates :tag_c, presence: true
    validates :tag_d, presence: true
    validates :nomination_fee, presence: true
    validates :start_date, presence: true
    validates :experience, presence: true
    validates :option_id, presence: true





   
end
