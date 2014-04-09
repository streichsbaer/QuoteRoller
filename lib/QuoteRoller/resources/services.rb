module QuoteRoller
  module Resources
    class Services < QuoteRoller::QuoteRollerResource

      def self.services
        find(:all)
      end
    end
  end
end
