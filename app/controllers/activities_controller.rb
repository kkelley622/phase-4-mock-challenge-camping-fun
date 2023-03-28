class ActivitiesController < ApplicationController
# rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

before_action :find_activity, only: [:destroy]

    # def index 
    #     activities = Activity.all
    #     render json: activities, status: :ok 
    # end
    def index 
        activities = Activity.all 
        render json: activities, status: :ok 
    end

    # def destroy 
    #     activity = find_activity
    #     activity.destroy
    #     head :no_content 
    # end
    def destroy 
        @activity.destroy 
        head :no_content 
    end

    private 

    # def find_activity
    #     Activity.find(params[:id])
    # end
    def find_activity
        @activity = Activity.find(params[:id])
    end

    # def render_not_found_response
    #     render json: { error: "Activity not found"}, status: :not_found 
    # end
    def render_not_found_response 
        render json: { error: "Activity not found"}, status: :not_found
    end
end
