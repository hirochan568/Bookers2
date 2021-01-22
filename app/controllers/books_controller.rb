class BooksController < ApplicationController

  def index
     @book = Book.new
     @books = Book.all
  end

  def create
    
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
