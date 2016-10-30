class BookImagesController < ApplicationController
  before_action :set_book_image, only: [:show, :update, :destroy]

  swagger_controller :BookImages, "Book Images"

  swagger_api :index do
    summary "Get all book images"
    consumes [ "application/json" ]
    response :ok, "Success", :BookImage
    response :not_found
    response :internal_server_error
  end

  swagger_api :show do
    summary "Get a book image"
    consumes [ "application/json" ]
    param :path, :id, :integer, :required, "Book image Id"
    response :ok, "Success", :BookImage
    response :not_found
    response :internal_server_error
  end

  swagger_api :create do
    summary "Create a book image"
    consumes [ "application/json" ]
    param :body, :body, :object, :required, "Book image parameters", { "$ref": "BookImage" }
    response :ok, "Success", :BookImage
    response :not_found
    response :internal_server_error
  end

  swagger_api :update do
    summary "Update a book image"
    consumes [ "application/json" ]
    param :body, :body, :object, :required, "Book image parameters", { "$ref": "BookImage" }
    response :ok, "Success", :BookImage
    response :not_found
    response :internal_server_error
  end

  swagger_api :destroy do
    summary "Destroy a book image"
    consumes [ "application/json" ]
    param :path, :id, :integer, :required, "Book image Id"
    response :ok, "Success", :BookImage
    response :not_found
    response :internal_server_error
  end

  swagger_model :BookImage do
    description "Book a object"
    property :id, :integer, :required, "Book image Id"
    property :book_id, :integer, :required, "Book Id"
    property :url, :string, :required, "Book image URL"
    property :alt, :string, :required, "Book image alt"
  end

  # GET /book_images
  def index
    @book_images = BookImage.all

    render json: @book_images
  end

  # GET /book_images/1
  def show
    render json: @book_image
  end

  # POST /book_images
  def create
    @book_image = BookImage.new(book_image_params)

    if @book_image.save
      render json: @book_image, status: :created, location: @book_image
    else
      render json: @book_image.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /book_images/1
  def update
    if @book_image.update(book_image_params)
      render json: @book_image
    else
      render json: @book_image.errors, status: :unprocessable_entity
    end
  end

  # DELETE /book_images/1
  def destroy
    @book_image.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_image
      @book_image = BookImage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def book_image_params
      params.require(:book_image).permit(:books_id, :url, :alt)
    end
end
