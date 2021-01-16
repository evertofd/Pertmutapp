class Product < ApplicationRecord
    belongs_to :user
    has_many :comment, dependent: :destroy
    validates :name, presence: true, length: { minimum: 5 }
    validates :description, presence: true
end
