class UserController < ApplicationController

def profile
end

end
 def show
    @user = user.find(params[:id])
  end
end
