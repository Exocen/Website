module ApplicationHelper

  #return the full title
  def full_title(page_title = '')
    if logged_in?
      base_title = current_user.name
    else
      base_title = 'Ror Sample'
    end
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

end
