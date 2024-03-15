class Place < ApplicationRecord

    belongs_to :author, class_name: 'User', foreign_key: :author_id
    has_one_attached :preview_img

    validates :preview_img, presence: true
    validates :description, presence: true
end