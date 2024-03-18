class Place < ApplicationRecord

    belongs_to :author, class_name: 'User', foreign_key: :author_id
    has_one_attached :preview_img

    validates :preview_img, presence: true
    validates :description, presence: true

    def self.ransackable_associations(auth_object = nil)
        ["author", "preview_img_attachment", "preview_img_blob"]
    end

    def self.ransackable_attributes(auth_object = nil)
        ["author_id", "created_at", "description", "id", "id_value", "published_at", "updated_at"]
    end
end


