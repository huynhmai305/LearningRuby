class BookController < ApplicationController
    def list
        @books = Book.all
    end
    
    def show
        @book = Book.find(params[:id]) #hien thi thong tin chi tiet 1 cuon sach
    end

    def new
        @book = Book.new
        @subjects = Subject.all
    end
    
    def create
    
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    def destroy
    
    end
end
