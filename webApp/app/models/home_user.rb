class HomeUser < ActiveRecord::Base
	validates :name, presence: true
	has_one :intro
	has_many :buttons
	has_one :pix

	def to_param
    	"#{id}" + "-" + "#{name.split(" ").join("").downcase}"
  	end
end
