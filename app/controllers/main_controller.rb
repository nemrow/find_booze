class MainController < ApplicationController
  def index
    # put your own credentials here
    account_sid = 'ACe69d012cb69556032c6cbb1f819317dd'
    auth_token = '[AuthToken]'

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new ENV['TWILIO_SID'], ENV['TWILIO_AUTH_TOKEN']

    @client.account.calls.create({
      :from => '+14157636769',
      :method => 'GET',
      :fallback_method => 'GET',
      :status_callback_method => 'GET',
      :record => 'false'
    })
  end
end
