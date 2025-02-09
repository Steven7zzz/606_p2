module ApplicationHelper
    def sortable_column(column, label)
        order = (params[:column] == column && params[:direction] == "asc") ? "desc" : "asc"
        text = params[:column] == column ? (params[:direction] == "asc" ? "asc" : "desc") : "sort"

        "#{label} ".html_safe + link_to(text, { column: column, direction: order })
    end
end
  