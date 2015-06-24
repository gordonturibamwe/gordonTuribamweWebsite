class Button < ActiveRecord::Base
	validates :name, :url, presence: true
	validate :not_more_than_3_buttons

	def not_more_than_3_buttons
		errors.add(:buttons, "You can't have more than 3 buttons") if Button.count >= 3
	end

	def self.three_buttons?
		if self.count == 3
			true
		end
	end

  	belongs_to :home_user
end
