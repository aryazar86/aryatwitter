class TalkToTwitterController < ApplicationController
  def getTweets
    render json: @client.user_timeline(params[:tweeterer])
  end
end
