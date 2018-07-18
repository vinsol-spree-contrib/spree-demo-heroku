class Spree::Intercom::Events::Order::PlaceService < Spree::Intercom::BaseService

  private

    def host_name
      "#{ENV['HEROKU_APP_NAME']}.herokuapp.com"
    end

    def protocol_name
      'https'
    end

end
