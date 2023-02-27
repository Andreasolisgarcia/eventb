class Event < ApplicationRecord
    belongs_to :user
    has_many :attendances, dependent: :destroy
    has_many :users, through: :attendances
    validates :location, presence: { message: "can't be blank" }
end
