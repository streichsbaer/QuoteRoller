module QuoteRoller
  module Resources
    class Proposals < QuoteRoller::QuoteRollerResource

      def self.proposals
        find(:all)
      end
    end
  end
end
