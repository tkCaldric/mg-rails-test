module ApplicationHelper
    def toggle_order(attribute)
        if params[:order] == "desc"
          "asc"  # Toggle to ascending if it's descending
        else
          "desc"  # Toggle to descending if it's ascending or not set
        end
      end 
end
