class Photo < ApplicationRecord
    belongs_to :user
    has_one_attached :picture

    def url
        picture.url
    end
end
