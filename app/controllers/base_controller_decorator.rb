Spree::BaseController.class_eval do
 before_action :set_preference

  private
    def set_preference
      unless request.path == '/cart_link'
        Spree::Config[:products_per_page] = ( request.path == '/' ) ? 9 : 12
      end
    end
end
