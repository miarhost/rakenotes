module ApplicationHelper
		def provide_title(page_title = '')
    main_title = "Rakenotes, about Ruby & Deploy"
    if page_title.empty?
    	main_title
    else
     page_title + " | " + main_title 
    end
    end
end
