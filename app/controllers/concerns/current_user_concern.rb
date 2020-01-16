module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    # super : if current user exist return it , and if it is not logged in , use openstruct to simulate like a user object
    super || guest_user
  end

  def guest_user
    GuestUser.new(name: 'Guest User',
                   first_name: 'Guest',
                   last_name: 'User',
                   email: 'guest_user@gmail.com')
  end
end
