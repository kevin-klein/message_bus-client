require 'excon'
require 'json'

require 'message_bus/client/version'
require 'message_bus/client/configuration'
require 'message_bus/client/connection'
require 'message_bus/client/message_handler'

class MessageBus::Client
  include MessageBus::Client::Configuration
  include MessageBus::Client::Connection
  include MessageBus::Client::MessageHandler

  def initialize(base_url, access_token=nil)
    super(base_url)
    @client_id = SecureRandom.uuid
    @access_token = access_token
  end
end
