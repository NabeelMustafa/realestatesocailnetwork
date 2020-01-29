class Service < ApplicationRecord
	resourcify
	has_many_attached :images, dependent: :destroy
	has_many :requirements, dependent: :destroy
	has_many :faqs, dependent: :destroy
	has_many :packages, dependent: :destroy
	
	belongs_to :user
	has_many :favorites, dependent: :destroy
  has_many :users_favorites, through: :favorites, source: :user

	accepts_nested_attributes_for :packages, reject_if: proc { |attributes| attributes['name'].blank? }
	accepts_nested_attributes_for :faqs, reject_if: proc { |attributes| attributes['question'].blank? }
	accepts_nested_attributes_for :requirements, reject_if: proc { |attributes| attributes['description'].blank? }

	validates_presence_of :packages
end
