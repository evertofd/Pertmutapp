class Product < ApplicationRecord
    belongs_to :user
    has_one_attached :picture
    has_many :comment, dependent: :destroy
    validates :name, presence: true, length: { minimum: 5 }
    validates :description, presence: true
    validates :picture, presence: true

    def self.search(search)
        if search
            where(["name LIKE ?", "%#{search}%"])
        else
            all
        end
    end
end
