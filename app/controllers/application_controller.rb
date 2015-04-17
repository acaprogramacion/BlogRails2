class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :categories_public
  before_action :ads_public

  layout :layout_by_resource

  def categories_public
    @list_categories = Category.all
  end

  def ads_public
    @ad = Ad.first
  end

  protected
  def layout_by_resource
    if devise_controller? && controller_name == 'sessions' && action_name == 'new' || controller_name == 'passwords' && action_name == 'new'
      'public'
    else
      'admin'
    end
  end
end
