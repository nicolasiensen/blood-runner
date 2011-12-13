# coding: utf-8
class UsersController < InheritedResources::Base
  def update
    update! do |success, failure|
      success.html { redirect_to root_path, :notice => "Valeu por informar o seu tipo sanguíneo! Agora podemos encontrar pessoas que precisam da sua ajuda." }
    end
  end
end
