module ApplicationHelper

  def current_user_admin?
    current_user.entity_type == 'admin'
  end

end
