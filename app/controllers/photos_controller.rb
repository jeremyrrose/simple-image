class PhotosController < ApplicationController

    def index
        @photos = Photo.all
        render json: @photos, methods: :url
    end


    def create
        # @user = User.find(photo_params[:user_id])
        @photo = Photo.new(photo_params)
        if @photo.save
            render json: @photo, methods: :url
        else
            render json: @photo.errors
        end

    end


    private

    def photo_params
        params.permit(:description, :picture, :user_id)
    end
end
