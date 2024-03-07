module HeaderHelper
    def current_link_class(path)
        current_page?(path) ? 'nav-link px-2 text-secondary' : 'nav-link px-2 text-white'
    end
end




# module ApplicationHelper
#     def current_link_class(action)
#         current_page?(controller: 'places', action: 'biking') ? 'text-secondary' : 'text-white'
#     end
# end