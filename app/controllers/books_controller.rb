class BooksController < ApplicationController
    #before_action :authenticate_user, only: [:create, :update, :destroy]
    before_action :set_book, only: [:show, :update, :destroy]

    def index
        render json: Book.all
    end

    def create
        book = Book.create(book_params)
        if book.save
            render json: book
        else
            render json: {message: book.errors }, status: 400
        end
    end

    def show
        render json: @book
    end

    def update
        if @book.update(book_params)
            render json: @book
        else
            render json: {message: book.errors }, status: 400
        end
    end

    def destroy
        if @book.destroy
            render json: @book
        else
            render json: {message: "Unable to remove the book "}, status: 400
        end
    end

    private

    def set_book
        @book = Book.find_by(id: params[:id])
    end


    def book_params
        params.require(:book).permit(:title, :author, :img_url, :description)
    end
end