class SubredditsController < ApplicationController
  def index
    @user = current_user
    @subreddits = @user.subreddits
  end

  def new
    @subreddit = Subreddit.new
  end
    
  def create
    @user = current_user
    @subreddit = Subreddit.new(subreddit_params)
    if @subreddit.save
      @user.subreddits.push(@subreddit)
      redirect_to '/subreddits'
    else
      render 'new'
    end
  end

  private
    def subreddit_params
      params.require(:subreddit).permit(:name)
    end
end
