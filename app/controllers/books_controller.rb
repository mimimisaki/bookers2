class BooksController < ApplicationController

	def top
	end

	def index
	end

	def show
	end

	def create
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
