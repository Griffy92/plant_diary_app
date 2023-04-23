class Plant < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :journals
    accepts_nested_attributes_for :journals
end
