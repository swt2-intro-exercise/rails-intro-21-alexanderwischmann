class Paper < ApplicationRecord
    has_and_belongs_to_many :authors

    scope :year, ->(year) { where("year = ?", year) if year.present?}

    validates :title, presence: true
    validates :venue, presence: true
    validates :year, presence: true, numericality: true
end
