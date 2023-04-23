class Journal < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :plants
    accepts_nested_attributes_for :plants
end
