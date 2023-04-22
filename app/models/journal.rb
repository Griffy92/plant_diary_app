class Journal < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :plants
end
