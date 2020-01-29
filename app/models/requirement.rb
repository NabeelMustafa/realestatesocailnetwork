class Requirement < ApplicationRecord
	validates :description, :requirement_type, :is_mandatory, presence: true
	belongs_to :service
	has_one :requirement_answer
end
