module ApplicationHelper
    def sortable(column, title = nil)
        title ||= column.titleize
        css_class = column == sort_column ? "current #{sort_direction}" : nil
        direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
        link_to title, {:sort => column, :direction => direction}, {:class => css_class}
    end

    # def sortable2(column, title = nil)
    #     title ||= column.titleize
    #     css_class = column == banana ? "current #{sort_direction}" : nil
    #     direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    #     link_to title, {:sort => column, :direction => direction}, {:class => css_class}
    # end

    # def sortable(column, title = nil)
    #     title ||= column.titleize
    #     direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    #     icon = sort_direction == "asc" ? "glyphicon glyphicon-chevron-up" : "glyphicon glyphicon-chevron-down"
    #     icon = column == sort_column ? icon : ""
    #     link_to "#{title}".html_safe, {column: column, direction: direction}
    #   end
end
