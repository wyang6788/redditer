class RedditapiController < ApplicationController

  def import
    # Authorization (Web)
    w = Redd.it(:web, "CLIENT_ID", "SECRET", "REDIRECT_URI", user_agent: "TestSite v1.0.0")
    url = w.auth_url("random_state", ["identity", "read"], :temporary)
    @print = "Please go to #{url} and enter the code below:"
  end

  def authorize
   code = params[:code]
   w.authorize!(code)

   # Authorization
   r = Redd.it(:script, "CLIENT_ID", "SECRET", "Unidan", "hunter2", user_agent: "TestBot v1.0.0")
   r.authorize!
  end
  helper_method :authorize
	
end
