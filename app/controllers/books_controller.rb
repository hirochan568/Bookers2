class BooksController < ApplicationController

  def index
     @book = Book.new
     @books = Book.all
  end

  def create
    @user = current_user
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "You have creatad book successfully."
      redirect_to  book_path(@book.id)
    else
        @books = Book.all
        flash[:notice] = ' errors prohibited this obj from being saved:'
        render "index"
    end
  end

  def show
      @book = Book.find(params[:id])
      
  end

  def destroy
  end



  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end