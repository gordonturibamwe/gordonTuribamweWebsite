module PixesHelper

	def pix(image)
		if image.image_file_name.nil?
			link_to "Add Image", new_home_user_pix_path(@home_user)
		else
			link_to "Edit Image", edit_home_user_pix_path(@home_user, @pix)
		end
	end
end
