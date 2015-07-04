class AboutUser < ActiveRecord::Base
	has_one :contact
	has_many :works
	has_many :educations
	has_one :skill
	validates :name, presence: true
end
