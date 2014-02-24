module QuoteRoller
  module Resources
    class Companies < QuoteRoller::QuoteRollerResource

      def self.companies
        find(:all)
      end
    end
  end
end
