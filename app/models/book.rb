class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :img_url, presence: true
    validates :description, presence: true
    validates :title, uniqueness: true
    validates :description, uniqueness: true
end
