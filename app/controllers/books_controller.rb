class BooksController < ApplicationController

  before_action except: :index do
    if @current_user.nil?
      redirect_to sign_in_path, alert: "Please sign in or sign up!"
    end
  end


   def index
      @books = Book.all
      @authors = Author.all
    end


    def show
      @book = Book.find_by id: params[:id]
    end


    def new
      @book = Book.new
      @book.author_id = params[:author_id]
    end


    def create
      @book = Book.new
      @book.title = params[:book][:title]
      @book.price = params[:book][:price]
      @book.photo_url = params[:book][:photo_url]
      @book.author_id = params[:book][:author_id]
        if @book.save
          redirect_to root_path, notice: "New Book Added to the Collection"
        else
          render :new
        end
    end


    def edit
      @book = Book.find_by id: params[:id]
    end


    def update
      @book = Book.find_by id:  params[:id]
      @book.title = params[:book][:title]
      @book.price = params[:book][:price]
      @book.photo_url = params[:book][:photo_url]
      @book.author_id= params[:book][:author_id]
        if @book.save
          redirect_to book_path(id: @book.id), notice: "This Book Has Been Updated"
        else
          render :edit
        end
    end


    def delete
      @book = Book.find_by id: params[:id]
      @book.destroy
        redirect_to root_path, notice: "Book Deleted From The Collection"
    end

    def check_out
       @book = Book.find_by id: params[:id]
         @book.inventory -= 1 if @book.inventory > 0
         @checkout = Checkout.new
         @checkout.book_id = @book.id
         @checkout.user_id = @current_user.id
         if @book.save
           redirect_to book_path(id: @book.id), notice: "Enjoy! Please Return on #{10.days.from_now}"
       else
         redirect_to book_path(id: @book.id), notice: "Sorry! Something went wrong!"
       end
     end

     def check_in
       @book = Book.find_by id: params[:id]
       @book.inventory += 1
       @checkout = Checkout.find_by user_id: @current_user.id, book_id: @book.id
       if @checkout.present?
         @checkout.destroy
         if @book.save
           redirect_to book_path(id: @book.id), notice: "Your Return Has Been Processed!😃📚 "
         end
       else
         redirect_to book_path(id: @book.id), notice: "Something went wrong, try again! 😢"
       end
     end

end
