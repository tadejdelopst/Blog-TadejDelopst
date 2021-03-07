module ApplicationHelper
	def display_mavbar_options
		capture do 
			if user_signed_in?
				concat link_to "Domov", root_path
				concat " "
				concat link_to "Uredi Profil", edit_user_registration_path
				concat " "
				concat link_to "Odjava", destroy_user_session_path, method: :delete
			else
      			concat link_to "Prijava", new_user_session_path
      			concat " "
      			concat link_to "Registracija", new_user_registration_path
      			concat " "
      		end
      	end
	end
end
