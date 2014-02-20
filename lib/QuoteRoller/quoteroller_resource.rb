module QuoteRoller
  class QuoteRollerResource < ActiveResource::Base
    self.format               = :json
    self.include_root_in_json = true
  end
end
