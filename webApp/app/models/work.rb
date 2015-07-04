class Work < ActiveRecord::Base
  	belongs_to :about_user
  	has_one :portfolio
	validates :title, :location, :company, :start, :description, :link, presence: true

	def self.work_empty?
		self.count > 0
	end
end
