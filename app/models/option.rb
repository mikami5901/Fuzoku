class Option < ApplicationRecord
    belongs_to :girl
    has_many :option_lists
    mount_uploader :o_picture, PictureUploader
end
