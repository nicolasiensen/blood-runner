class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :associate_user_and_question

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url
  end

  check_authorization

  protected

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def signed_in?
    !!current_user
  end

  helper_method :current_user, :signed_in?

  def current_user=(user)
    @current_user = user
    session[:user_id] = user.id
  end
  
  def associate_user_and_question
    if session[:request_id]
      request = Request.find(session[:request_id])
      request.update_attribute :user_id, current_user.id
      session[:request_id] = nil
      redirect_to request, :notice => "#{current_user.name}, seu pedido foi publicado. Agora compartilhe com seus amigos!"
    end
  end
end
