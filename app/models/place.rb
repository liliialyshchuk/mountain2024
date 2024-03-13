class Place < ApplicationRecord
    has_one_attached :preview_img

    validates :preview_img, presence: true
    validates :description, presence: true
end
