module NewsHelper
	def display_news_links(news)
		html = "<td> #{link_to 'Show', news} </td>"
    	html += "<td> #{link_to 'Edit', edit_news_path(news) if current_user == news.user }  </td>"
    	html += "<td> #{link_to 'Destroy', news, method: :delete, data: { confirm: 'Are you sure?'} if current_user == news.user }  </td>"
    	html.html_safe
	end

	def display_news_show_links(news)
		html = ""
		if current_user == news.user
			html += link_to 'Edit', edit_news_path(news)
			html +=  ' | '
		end
		html +=  link_to 'Back', news_index_path 
		html.html_safe
	end	
end
