# coding: utf-8
class RequestsController < InheritedResources::Base
  before_filter :only => [:index] {@request = Request.new}

  def create
    create! do |success, failure|
      success.html { redirect_to request_path(@request), :notice => "Seu pedido já está publicado. Agora compartilhe com seus amigos!" }
    end
  end
end
