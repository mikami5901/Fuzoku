class OptionList < ApplicationRecord
    belongs_to :option
    mount_uploader :option_picture, PictureUploader
end
