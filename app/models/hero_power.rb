class HeroPower < ApplicationRecord
    validates :strength, presence: true
    belongs_to :power 
    belongs_to :hero
end
