class ApplicationController < ActionController::Base
  before_action :twitterCreds
  
  def twitterCreds
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key    = ENV["API_KEY"]
      config.consumer_secret = ENV["API_SECRET_KEY"]
    end
  end

end
