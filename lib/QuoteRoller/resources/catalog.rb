module QuoteRoller
  module Resources
    class Catalog < QuoteRoller::QuoteRollerResource

      def self.catalog
        find(:all)
      end
    end
  end
end
