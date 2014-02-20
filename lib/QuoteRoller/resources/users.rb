module QuoteRoller
  module Resources
    class Users < QuoteRoller::QuoteRollerResource

      def self.users
        find(:all)
      end
    end
  end
end
