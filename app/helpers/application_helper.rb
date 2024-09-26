module ApplicationHelper
    def bootstrap_class_for(flash_type)
        {
          success: "alert-success",
          error: "alert-danger",
          alert: "alert-warning",
          notice: "alert-info",
        }[flash_type.to_sym] || flash_type.to_s
      end

      def br_date(date)
        return date.strftime("%m/%d/%y")
      end

      def br_dollar(amount)
        number_to_currency(amount, precision: 0)
      end

      def br_longdate(date)
        return date.strftime("%m/%d/%y")
      end

      def br_datetime(date)
        return date.to_formatted_s(:long)
      end
end
