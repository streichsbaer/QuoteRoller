module QuoteRoller
  module Resources
    class Contacts < QuoteRoller::QuoteRollerResource

      def self.contacts
        find(:all)
      end
    end
  end
end
