class BookController < ApplicationController
    layout 'standard'
    
    def list
        @books = Book.all
    end
    
    def show #xem chi tiet 1 quyen sach
        @book = Book.find(params[:id])
    end

    def new #tao moi doi tuong khi muon hien thi thong tin cho ng dung nhap lieu
       @book = Book.new
       @subjects = Subject.all
    end
     
    def book_params
        params.require(:books).permit(:title, :price, :subject_id, :description)
    end

    def create #lay thong tin tu form luu db
        @book = Book.new(book_params)
        # respond_to do |format|
            if @book.save
                # format.html {redirect_to :list, notice: 'Thêm sách thành công'}
                redirect_to :action => 'list'
            else
                @subject = Subject.all
                render :action => 'new'
            end
        # end
    end
    
    def edit #hien thi thong tin de ng dung sua
        @book = Book.find(params[:id])
        @subject = Subject.all
    end
     
    def book_param
        params.require(:book).permit(:title, :price, :subject_id, :description)
    end

    def update #update thong tin sua doi vao db
        @book = Book.find(params[:id])
        if @book.update_attributes(book_param) #update_attributes: ghi de len
            redirect_to :action => 'show', :id => @book
        else
            @subjects = Subject.all
            render :action => 'edit'
        end
    end
   
    def delete
        Book.find(params[:id]).destroy
        redirect_to :action => 'list'
    end

    def show_subjects
        @subject = Subject.find(params[:id])
    end
end
