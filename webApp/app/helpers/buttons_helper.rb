module ButtonsHelper

	def buttons(btn)
		if btn.three_buttons?
			nil
		else
			link_to "Add button", new_home_user_button_path(@home_user), class: "btn btn-default btn-sm btn-success"
		end
	end

	def count_buttons(btn)
		btn.counting
	end
end
