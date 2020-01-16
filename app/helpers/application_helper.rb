module ApplicationHelper

  def login_links
    if current_user.is_a?(GuestUser)
      (link_to 'Register', new_user_registration_path) +
      "<br>".html_safe +
      (link_to 'Login', new_user_session_path)
    else
      link_to 'logout', destroy_user_session_path, method: :delete
    end
  end

  def social_source(layout_name)
    content_tag(:p, "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout", class: "source-greeting") if session[:source]
  end

  def copyright_generator
    CopyrightViewTool::Renderer.copyright('Eslam Mohamed', 'All rights reserved')
  end
end
