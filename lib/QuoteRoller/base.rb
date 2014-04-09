module QuoteRoller
  class Base
    def initialize(options={})
      @oauth = options[:oauth]
      config_base_resource
    end

    def users
      QuoteRoller::Resources::Users.find().attributes["objects"]
    end

    def proposals
      QuoteRoller::Resources::Proposals.find().attributes["objects"]
      # Gets proposal ID
      # props[0].id

      # Gets proposal status number
      # props[0].status

      # Gets proposal status description
      # props[0].status_description

      # Gets the grand_total
      # props[0].grand_total.to_i

      # Gets the author of a given proposal
      # props[0].author.email
      # Gets the company id for a given proposal
      # props[0].contacts[0].company.split('/').last

    end

    def proposal(id)
      QuoteRoller::Resources::Proposals.find(id)
      # Get a specific task name and qty
      # qr.proposal("296169/pricingtable").attributes["services"][0].name
      # qr.proposal("296169/pricingtable").attributes["services"][0].qty
    end

    def companies
      QuoteRoller::Resources::Companies.find().attributes["objects"]
    end

    def company(id)
      QuoteRoller::Resources::Companies.find(id)
    end

    def contacts
      QuoteRoller::Resources::Contacts.find().attributes["objects"]
    end

    def contact(id)
      QuoteRoller::Resources::Contacts.find(id)
    end

    def services
      QuoteRollerResource.site = "https://api.quoteroller.com/v2/catalog"
      QuoteRoller::Resources::Services.find().attributes["objects"]
    end


    private
      def config_base_resource
        QuoteRollerResource.site = QuoteRoller::API_BASE_URL
        QuoteRollerResource.headers['authorization'] = 'Bearer ' + @oauth
        QuoteRollerResource.include_format_in_path = false
      end
  end
end
