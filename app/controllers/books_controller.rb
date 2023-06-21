class BooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create 
    new_book = Book.create(name: params[:name])
    render json: { book: new_book }
  end 

end
