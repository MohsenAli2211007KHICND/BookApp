class BooksController < ApplicationController
    before_action :set_book, only: %i[ show edit destroy update ]
    
    def index
        @books = Book.all
        render json: @books, status: :ok
    end
    def show
        render json: @book, status: :ok
    end
    def create
        @book = Book.new(book_params)
        if @book.save
            render json: @book, status: :created
        else
            render json: { message: @book.errors.full_messages.join(',')}, status: :unprocessable_entity
        end
    end
    def update
        if @book.update(book_params)
            render json: @book, status: :ok
        else
            render json: { message: @book.errors.full_messages.join(',')}, status: :unprocessable_entity
        end
    end

    def destroy
        if @book.present?
            @book.destroy
        end
    end

    private 

    def book_params
        params.permit(:title, :author, :description, :page, :publish_year, :price, :bookImg)
    end

    def set_book
        @book = Book.find(params[:id])
    end

end