module ApplicationHelper

  def login_links
    if current_user.is_a?(User)
      link_to 'logout', destroy_user_session_path, method: :delete
    else
      (link_to 'Register', new_user_registration_path) +
        "<br>".html_safe +
        (link_to 'Login', new_user_session_path)
    end
  end

  def social_source(layout_name)
    content_tag(:p, "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout", class: "source-greeting") if session[:source]
  end
end
