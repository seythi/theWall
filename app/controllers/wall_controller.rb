class WallController < ApplicationController
  def index
  	@user = User.new
  end

  # def login	
  # end

  def register
  	newUser = User.new(newuser_params)
  	if newUser.save
  		session[:uid] = User.last.id
  		redirect_to '/wall'
  	else
  		redirect_to '/'
  	end
  end

  # def makepost
  # end

  # def makecomment
  # end

  def wall
  	@users = User.all
  	@posts = Status.all
  	@comments = Comment.all
  end

  private
  def newuser_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
