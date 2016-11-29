module Api::V1
  class UsersController < ApiController

    # GET /v1/users
    def index
      @users = User.all

      offset = params[:offset].to_i
      limit = params[:limit].to_i

      render json: @users.order(id: :desc).offset(offset * limit).limit(limit)
    end

  end
end
