class ProfileController < ApplicationController
  def index
    @user = current_user
    @subreddits = @user.subreddits
  end
end
