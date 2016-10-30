class BooksController < ApplicationController
  before_action :set_book, only: [:show, :update, :destroy]

  swagger_controller :Books, "Books"

  swagger_api :index do
    summary "Get all books"
    consumes [ "application/json" ]
    param :path, :id, :integer, :required, "Book Id"
    response :ok, "Success", :Book
    response :not_found
    response :internal_server_error
  end

  swagger_api :show do
    summary "Get a book"
    consumes [ "application/json" ]
    param :path, :id, :integer, :required, "Book Id"
    response :ok, "Success", :Book
    response :not_found
    response :internal_server_error
  end

  swagger_api :create do
    summary "Create a book"
    consumes [ "application/json" ]
    param :body, :body, :object, :required, "Book parameters", { "$ref": "BookParams" }
    response :ok, "Success", :Book
    response :not_found
    response :internal_server_error
  end

  swagger_api :update do
    summary "Update a book"
    consumes [ "application/json" ]
    param :path, :id, :integer, :required, "Book Id"
    param :body, :body, :object, :required, "Book parameters", { "$ref": "BookParams" }
    response :ok, "Success", :Book
    response :not_found
    response :internal_server_error
  end

  swagger_api :destroy do
    summary "Destroy a book"
    consumes [ "application/json" ]
    param :path, :id, :integer, :required, "Book Id"
    response :ok, "Success", :Book
    response :not_found
    response :internal_server_error
  end

  swagger_model :BookParams do
    description "Book parameters"
    property :book, :object, :required, "Book  object", { "$ref": "Book" }
    property :book_image, :object, :required, "Book image object", { "$ref": "BookImage" }
  end
  swagger_model :Book do
    description "Book a object"
    property :id, :integer, :required, "Book Id"
    property :isbn, :string, :required, "Book ISBN code"
    property :title, :string, :required, "Book title"
    property :price, :integer, :required, "Book price"
    property :tumbnail, :string, :required, "Book tumbnail"
  end

  # GET /books
  def index
    @books = Book.eager_load(:book_image).all

    render json: @books
  end

  # GET /books/1
  def show
    render json: @book
  end

  # POST /books
  def create
    @book = Book.new(book_params)

    @book.book_image.build(book_image_params)

    if @book.save
      render json: @book, status: :created, location: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /books/1
  def update
    if @book.update(book_params)
      render json: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # DELETE /books/1
  def destroy
    @book.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.eager_load(:book_image).find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def book_params
      params.require(:book).permit(:isbn, :title, :price, :thumbnail)
    end

    # Only allow a trusted parameter "white list" through.
    def book_image_params
      params.require(:book_image).permit(:books_id, :url, :alt)
    end

end
