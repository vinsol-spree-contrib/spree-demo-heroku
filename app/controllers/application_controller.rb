class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from Taxjar::Error, with: :taxjar_rollback

  private
    def taxjar_rollback(e)
      flash[:error] = 'TaxJar::' + e.message
      redirect_to cart_path
    end
end
