class HeroPower < ApplicationRecord
    validates :strength, presence: true, inclusion: ['Strong', 'Weak', 'Average']
    belongs_to :power 
    belongs_to :hero
end
