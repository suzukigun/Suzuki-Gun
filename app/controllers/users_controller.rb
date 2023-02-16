class UsersController < ApplicationController
    before_action user_admin, only: [:index]

    def index
        @users = User.all
    end
  
   
end
