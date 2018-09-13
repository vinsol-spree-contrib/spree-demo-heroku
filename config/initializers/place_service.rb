Spree::Intercom::Events::Order::PlaceService.class_eval do
  private
    def host_name
      "#{ENV['HEROKU_APP_NAME']}.herokuapp.com"
    end

    def protocol_name
      'https'
    end
 end
