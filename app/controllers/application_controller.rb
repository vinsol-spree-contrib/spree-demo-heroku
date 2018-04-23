class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from Taxjar::Error, with: :taxjar_rollback

  private
    def taxjar_rollback(e)
      flash[:error] = 'TaxJar::' + e.message
      redirect_to cart_path
    end
end
