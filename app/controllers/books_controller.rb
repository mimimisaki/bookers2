class BooksController < ApplicationController

	def top
	end

	def about
	end

	def index
		@books = Book.all
		@user = @books.users
	end

	def show
		@book = Book.find(params[:id])
		@newbook = Book.new
		@user = @book.user
	end

	def create
		@book = Book.new(book_params)
		@book.user_id = current_user.id
		@book.save
		redirect_to book_path(@book.id)
	end

	def edit
	end

	def destroy
	end

	private
	def book_params
		params.require(:book).permit(:title, :body)
	end
end
