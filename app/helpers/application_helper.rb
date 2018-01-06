module ApplicationHelper
	# Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "HexagonFab"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |message_type, message|
      concat(content_tag(:div, message, class: "alert alert-#{bootstrap_class_for(message_type)} fade in") do
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
              concat message
            end)
    end
    nil
  end

end
