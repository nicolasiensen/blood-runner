class SessionsController < ApplicationController
  skip_authorization_check
  skip_before_filter :associate_user_and_question

  def create
    auth = request.env['omniauth.auth']
    unless @auth = Authorization.find_from_hash(auth)
      # Create a new user or add an auth to existing user, depending on
      # whether there is already a user signed in.
      @auth = Authorization.create_from_hash(auth, current_user)
    end
    # Log the authorizing user in.
    self.current_user = @auth.user
    redirect_to root_path
  end

  def delete
    session[:user_id] = nil
    redirect_to root_path
  end

  def position
    if signed_in? then current_user.update_attributes(:latitude => params[:latitude], :longitude => params[:longitude]) end
    session[:ll] = [params[:latitude], params[:longitude]]
  end
end
