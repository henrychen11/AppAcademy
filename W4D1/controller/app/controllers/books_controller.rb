class BooksController < ApplicationController
  def index
    @books = Book.all
    render :index
  end

  def new
    render :new
  end

  def create
    new_book = Book.new(book_params)
    if book.save
      redirect_to books_url #"/books"
    else
      flash.no[:errors] = new_book.errors.full_messages
      render :new
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_url
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
