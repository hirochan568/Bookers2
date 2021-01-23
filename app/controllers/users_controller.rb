class UsersController < ApplicationController
  def  show
    @user = User.find(params[:id])
		@newbook = Book.new
    @books = @user.books
  end

  def index
  end

  def edit
  end

  
  
  private
   

    def book_params
        params.require(:book).permit(:title, :body)
    end

    def user_params
        params.require(:user).permit(:name,:profile_image,:introduction)
    end

    def  ensure_current_user
        @user = User.find(params[:id])
     if @user.id != current_user.id
        redirect_to  book_path(@book.id)

     end
    end
end
