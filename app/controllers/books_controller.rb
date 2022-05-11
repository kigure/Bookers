class BooksController < ApplicationController
  def new
  end

  def create
    cb = Book.new(book_params)
    book.save
    redirect_to book_path(cb.id)
  end

  def index
    @books = Book.all
  end
  
  def show
    @show = Book.find(params[:id])
  end

  def edit
    @edit = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)  
  end

  def destroy
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
