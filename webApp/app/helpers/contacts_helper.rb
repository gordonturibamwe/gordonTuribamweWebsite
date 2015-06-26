module ContactsHelper

	def contact1(text)
		text = @about_user.contact
		if text.nil?
			link_to "Add Contact", new_about_user_contact_path(@about_user), class: "label label-success"
		else
			link_to 'Edit Contact', edit_about_user_contact_path(@about_user, @contact), class: "label label-warning" 
		end
	end

	def contact2(text)
		text = @about_user.contact
		if text.nil?
		else
			link_to 'Delete Contact', about_user_contact_path(@about_user, @contact), method: :delete, data: { confirm: 'Are you sure?'}, class: "label label-danger"
		end
	end
end
