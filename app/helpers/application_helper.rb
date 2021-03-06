module ApplicationHelper
	def display_mavbar_options
		capture do 
			if user_signed_in?
				concat link_to "Uredi Profil", edit_user_registration_path, class:'btn btn-sm btn-outline-secondary', style:"margin:10px;"
				concat link_to "Odjava", destroy_user_session_path, method: :delete, class:'btn btn-sm btn-outline-secondary', style:"margin:10px;" 
			else
      			concat link_to "Prijava", new_user_session_path, class:'btn btn-sm btn-outline-secondary', style:"margin:10px;"
      			concat " "
      			concat link_to "Registracija", new_user_registration_path, class:'btn btn-sm btn-outline-secondary', style:"margin:10px;"
      			concat " "
      		end
      	end
	end
end
