module ApplicationHelper
  def format_date datetime
    datetime.to_time.strftime("%d/%m/%Y")
  end
end
