module IntrosHelper

	def intro(text)
		text = @home_user.intro
		if text.nil?
			link_to "Add Introduction", new_home_user_intro_path(@home_user), class: "btn btn-default btn-sm btn-success"
		else
			link_to 'Edit Intro', edit_home_user_intro_path(@home_user, @intro), class: "label label-warning"
		end
	end

end
