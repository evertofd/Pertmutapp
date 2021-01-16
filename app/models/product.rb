class Product < ApplicationRecord
    has_one_attached :picture
    has_many :comment, dependent: :destroy
    validates :name, presence: true, length: { minimum: 5 }
    validates :description, presence: true
end
