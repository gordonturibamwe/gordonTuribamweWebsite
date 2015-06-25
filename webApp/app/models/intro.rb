class Intro < ActiveRecord::Base
	validates :intro, presence: true
  	belongs_to :home_user

	def counting?
		intro.zero? || intro.blank?
	end
end
