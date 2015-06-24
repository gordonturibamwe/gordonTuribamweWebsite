class Pix < ActiveRecord::Base
	has_attached_file :image, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "150x150>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	# validate :not_more_than_1_image

	# def not_more_than_1_image
	# 	errors.add(:pixes, "You can't have more than 1 image") if Pix.count >= 1
	# end

	belongs_to :home_user
end
