class Faq < ApplicationRecord
	validates :question, :answer, presence: true
	belongs_to :service
end
