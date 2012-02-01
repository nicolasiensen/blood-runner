# coding: utf-8
class RequestsController < InheritedResources::Base
  load_and_authorize_resource
  before_filter :only => [:index] {@request = Request.new}

  before_filter :only => [:index] do
    @json = Request.where("created_at > ?", Date.today - 1.month).to_gmaps4rails do |request, marker|
      marker.infowindow render_to_string(:partial => "infowindow", :locals => {:request => request}).gsub(/\n/, '').gsub(/"/, '\"')
    end
  end

  before_filter :only => [:create] {if signed_in? then params[:request][:user_id] = current_user.id end}
  before_filter :only => [:show] {@json = Request.find(params[:id]).to_gmaps4rails}

  def create
    create! do |success, failure|
      if @request.user
        success.html { redirect_to request_path(@request), :notice => "#{current_user.name}, seu pedido foi publicado. Agora compartilhe com seus amigos!" }
        failure.html { render :action => :index }
      else
        success.html { session[:request_id] = @request.id; redirect_to "/auth/facebook"; }
        failure.html { render :action => :index }
      end
    end
  end
end
