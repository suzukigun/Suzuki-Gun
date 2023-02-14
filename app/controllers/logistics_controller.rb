class LogisticsController < ApplicationController
  before_action :authenticate_user!
  
  def index
        @logistics = Logistic.all
    end
    def new
        @logistic = Logistic.new
      end
    
      def create
        logistic = Logistic.new(logistic_params)
        logistic.user_id = current_user.id
        if logistic.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
      
      def show
        @logistic = Logistic.find(params[:id])
      end
      def edit
        @logistic = Logistic.find(params[:id])
      end
      def update
        logistic = Logistic.find(params[:id])
        if logistic.update(logistic_params)
          redirect_to :action => "show", :id => logistic.id
        else
          redirect_to :action => "new"
        end
      end
      def destroy
        logistic = Logistic.find(params[:id])
        logistic.destroy
        redirect_to action: :index
      end
      private
      def logistic_params
        params.require(:logistic).permit(:company, :basic_info, :url, :content, :image, :rating, :image)
      end
end
