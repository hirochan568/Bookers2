class BooksController < ApplicationController

  def index
     @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book)
    else
      @books = Book.all
      render :index
    end
  end


  def show
  end

  def destroy
  end
  
  
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end

  
end
