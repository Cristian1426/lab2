class Monster < ApplicationRecord
    validates :name, uniqueness: { case_sensitive: false }, presence: true
    validates :name, presence: true
    has_many :attacks, dependent: :destroy
    has_many :tweets, dependent: :destroy
    has_many :victims, through: :attacks
end