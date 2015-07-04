module PixesHelper

	def pix(image)
		if image.nil?
			link_to "Add Image", new_home_user_pix_path(@home_user), class: "btn btn-default btn-sm btn-success"
		elsif image.image_file_name.nil?
			link_to "Add Image", new_home_user_pix_path(@home_user), class: "btn btn-default btn-sm btn-success"
		else
			link_to "Edit Image", edit_home_user_pix_path(@home_user, @pix), class: "label label-warning"
		end
	end
end
