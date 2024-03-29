class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def get_users
    @users = User.all
    respond_to do |format|
      format.json { render json: @users }
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find_or_create_by_id(params[:id])
    coord = params[:loc].split(',').map{|x| x.to_i}
    @user.x = coord[0]
    @user.y = coord[1]
    @user.beats = params[:beats]
    @user.save
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
