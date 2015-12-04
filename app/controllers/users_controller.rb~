class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
      @current_user = current_user
      subredditsmodel = @current_user.subreddits
      @subreddits = Array.new
      @conversations = Conversation.involving(current_user).order("created_at DESC")
      users = User.where.not("id = ?",current_user.id).order("created_at DESC")

      @users = Array.new     
      count = 0

      subredditsmodel.each_with_index do |subreddit|
        @subreddits.push(subreddit.name)
      end
      
      @subreddits = @subreddits.uniq

      users.each_with_index do |user|
        subreddits = Array.new

        subredditsmodel = user.subreddits
        subredditsmodel.each_with_index do |subreddit|
          subreddits.push(subreddit.name)          
        end

        max = [subredditsmodel.size, @subreddits.size].max
        intersection = subreddits & @subreddits
        if !intersection.empty?
          pair = Array.new
          pair.push(user)
          pair.push(BigDecimal.new('1.0') * intersection.size/max * 100)
          @users.push(pair)
          count += 1
        end
        break if count == 4
      end
      
      @users = @users.sort {|a,b| b[1] <=> a[1]}
  end
end
