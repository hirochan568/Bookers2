class UsersController < ApplicationController
  def show
    ef show
    @user = User.find(params[:id])
		@book = Book.new
    @books = @user.books
  end
end
