class ApplicationController < ActionController::Base
  protect_from_forgery

  NUMERO_POR_PAGINA = 10

  def current_ability
    @current_ability ||= Ability.new(current_funcionario)
  end

  #rescue_from CanCan::AccessDenied do |exception|
    #redirect_to root_url, :notice => exception.message
  #end

  #def after_sign_in_path_for(resource)
  #  sign_in_url = url_for(:action => 'new', :controller => 'sessions', :only_path => false, :protocol => 'http')
  #  if request.referer == sign_in_url
  #    super
  #  else
  #    stored_location_for(resource) || request.referer || root_path
  #  end
  #end

  def after_sign_in_path_for(resource_or_scope)
	  super	  
	  "/sobre"
	end

	def after_sign_up_path_for(resource_or_scope)
	  super	  
	  "/sobre"
	end

end
