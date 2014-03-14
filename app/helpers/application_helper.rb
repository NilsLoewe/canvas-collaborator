module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Canvas Collaborator"
    if (page_title.nil? or page_title.empty?)
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def current_user?(user)
    user == current_user
  end

  def debug_enabled?
    Rails.env.development?
  end

end
