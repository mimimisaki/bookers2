class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@newbook = Book.new
  	@books = @user.books
  end

  def index
  	@users = User.all
    @newbook = Book.new
    @user = current_user
  end

  def edit
  	@user = User.find(params[:id])
    if @user == current_user
      render :edit
    else
      redirect_to user_path(current_user.id)
    end
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update(user_params)
      redirect_to user_path(@user.id), notice: 'You have updated user successfully.'
    else
      render :edit
    end
  end

  private
  def user_params
  	params.require(:user).permit(:name, :email, :introduction, :profile_image)
  end

end
