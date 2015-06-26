class AboutUser < ActiveRecord::Base
	has_one :contact
	validates :name, presence: true
end
