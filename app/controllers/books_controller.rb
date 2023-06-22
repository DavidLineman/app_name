class BooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create 
    @book = Book.create(name: params[:name])
    render 'books/create'
  end 

end
