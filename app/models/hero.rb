class Hero < ApplicationRecord
    has_many :hero_powers
    has_many :powers, through: :hero_powers

    # def timestamp
    #     self.created_at.strftime("%I:%M:%p")
    # end
end
