class Monster < ApplicationRecord
    has_and_belongs_to_many :special_ability
    has_and_belongs_to_many :attacks
    has_and_belongs_to_many :legendary_actions
    has_and_belongs_to_many :reactions
end