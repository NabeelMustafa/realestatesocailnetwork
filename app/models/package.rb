class Package < ApplicationRecord
	validates :name, :description, :delivery_time, :revisions, :price, presence: true
	belongs_to :service
end
