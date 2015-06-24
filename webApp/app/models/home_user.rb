class HomeUser < ActiveRecord::Base
	validates :name, presence: true
	has_one :intro
	has_many :buttons
	has_one :pix
end
