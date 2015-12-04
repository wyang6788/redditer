class SubredditsController < ApplicationController
  def new
    @subreddit = Subreddit.new
  end
    
  def create
    @user = current_user
    @subreddit = Subreddit.new(subreddit_params)
    if @subreddit.save
      @user.subreddits.push(@subreddit)
      redirect_to '/profile'
    else
      render 'new'
    end
  end

  private
    def subreddit_params
      params.require(:subreddit).permit(:name)
    end
end
