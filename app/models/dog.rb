class Dog < ApplicationRecord
	has_many :dogsitter, through: :strolls
end
