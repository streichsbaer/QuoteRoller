module QuoteRoller
  class Base
    def initialize(options={})
      @oauth = options[:oauth]
      config_base_resource
    end

    def users
      QuoteRoller::Resources::Users.find(:one, :from => "/v2/users")
    end

    private
      def config_base_resource
        QuoteRollerResource.site = QuoteRoller::API_BASE_URL
        QuoteRollerResource.headers['authorization'] = 'Bearer ' + @oauth
        QuoteRollerResource.include_format_in_path = false
      end
  end
end
