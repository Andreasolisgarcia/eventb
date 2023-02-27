class Event < ApplicationRecord
    has_many :attendances
    has_many :users, through: :attendances
    validates :location, presence: { message: "can't be blank" }
end
