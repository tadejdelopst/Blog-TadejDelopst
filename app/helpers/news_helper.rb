module NewsHelper
	def display_news_links(news)
    	capture do
			concat link_to('Preberi več', news, class:'btn btn-sm btn-outline-secondary'), style:"margin:10px;"
    	end
	end

	def display_news_show_links(news)
		capture do
			if current_user == news.user
				concat link_to('Uredi', edit_news_path(news), class:'btn btn-sm btn-outline-secondary'), style:"margin:10px;"
	        	concat link_to('Izbriši', news, method: :delete, data: { confirm: 'Are you sure?' }, class:'btn btn-sm btn-outline-secondary'), style:"margin:10px;"
				concat  ' | '
			end
			concat link_to 'Nazaj',  news_index_path, class:'btn btn-sm btn-outline-secondary', style:"margin:10px;"
		end
	end	
end
