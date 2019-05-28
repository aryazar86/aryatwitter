require 'Twitter'

class TalkToTwitterController < ApplicationController
  def getTweets 
    client = Twitter::REST::Client.new do |config|
      config.consumer_key    = ENV["API_KEY"]
      config.consumer_secret = ENV["API_SECRET_KEY"]
    end

    render json: client.user_timeline("aryairanpour")
  end
end
