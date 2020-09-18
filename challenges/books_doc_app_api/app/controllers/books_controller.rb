class BooksController < ApplicationController
    def index
        puts "=========params========"
        puts params
        puts "=========params========"
        render json: {     
            status: 200, 
            books: Book.all }
    end

    def show
        puts "=========params========"
        puts params
        puts "=========params========"
        found_book = Book.find(params[:id])
        render json: { status: 200, book: found_book }
    end

    def update
        puts "=========params========"
        puts params
        puts "=========params========"
    end

    def create
        puts "=========params========"
        puts params
        puts "=========params========"
        if book.save
            render json: { status: 201, book: book
         } 
          else
            # Unprocessable Entity
            render json: { status: 422, book: book
         }
    end

    def edit
        puts "=========params========"
        puts params
        puts "=========params========"

    end
    def destroy
        puts "=========params========"
        puts params
        puts "=========params========"

    end
    private # Any methods below here

    def book_params
      # Returns a sanitized hash of the params with nothing extra
      params.required(:book).permit(:title, :author, :genre)
    end
end