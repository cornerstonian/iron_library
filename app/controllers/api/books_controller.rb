class Api::BooksController < ApplicationController

    before_action do
      request.format = :json
    end

    protect_from_forgery with: :null_session

  def index
      q = Book.all
      q = q.where("title ILIKE ?", "%#{params[:query]}%") if params[:query].present?
      @books = q
  end


  def show
    @book = Book.find_by id: params[:id]
  end


  def check_out
    @book = Book.find_by id: params[:id]
    @book.inventory -= 1 if @book.inventory > 0
    renter = User.first
    checkout = Checkout.new
    checkout.book_id = book.id
    checkout.user_id = renter.id
    if book.save && checkout.save
      render :show, status: 201
    else
      render json: {errors: @book.errors}, status: 422
    end
  end


  def check_in
    renter = User.first
    @book = Book.find_by id: params[:id]
    checkout = find_by user_id: renter.id
    if checkout.present?
      @checkout.destroy
      @book.inventory += 1
      if book.save
        render json: {ok: true}, status: 200
      end
    else
        render json: {errors: @book.errors}, status: 422
    end
  end

end
