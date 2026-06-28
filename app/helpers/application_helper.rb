module ApplicationHelper

  def status_badge(status)
    if status == true
      "🟢 Available"
    else
      "🔴 Not Available"
    end
  end

  def experience_label(year)
    if year >= 10
      "Senior Doctor"
    else
      "Junior Doctor"
    end
  end

  def current_year
    Date.current.year 
  end
end
