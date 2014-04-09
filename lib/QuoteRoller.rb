require "active_resource"
require "QuoteRoller/version"
require "QuoteRoller/base"
require "QuoteRoller/quoteroller_resource"
require "QuoteRoller/resources/users"
require "QuoteRoller/resources/proposals"
require "QuoteRoller/resources/companies"
require "QuoteRoller/resources/contacts"
require "QuoteRoller/resources/services"

module QuoteRoller
  API_BASE_URL = "https://api.quoteroller.com/v2"
end
