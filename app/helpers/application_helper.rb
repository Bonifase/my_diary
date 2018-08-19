module ApplicationHelper
    def alert_class(flash_type)
        case flash_type.to_sym
        when :notice
            "alert_success"
        when :alert
            "alert_warning"
        when :error
            "alert_danger"
        end
    end
end
