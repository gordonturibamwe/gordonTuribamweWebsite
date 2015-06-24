class Intro < ActiveRecord::Base
	validates :intro, presence: true
  	belongs_to :home_user
end
