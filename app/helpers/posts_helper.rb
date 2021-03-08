module PostsHelper
	def display_post_links(post)
		capture do
			concat link_to('Preberi več', post, class:'btn btn-sm btn-outline-secondary', style:"margin:10px;")
    	end
	end

	def display_post_show_links(post)
		capture do
			if current_user == post.user
				concat link_to('Uredi', edit_post_path(post), class:'btn btn-sm btn-outline-secondary', style:"margin:10px;")
	        	concat link_to('Izbriši', post, method: :delete, data: { confirm: 'Are you sure?' }, class:'btn btn-sm btn-outline-secondary', style:"margin:10px;")
				concat  ' | '
			end
			concat link_to 'Nazaj', posts_path, class:'btn btn-sm btn-outline-secondary'
		end
	end
end
