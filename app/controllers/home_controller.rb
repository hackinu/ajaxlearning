class HomeController < ApplicationController
  def index
    @comments=Comment.all
  end
  
  def create
    @comment = Comment.new(body: params[:body])

    if @comment.save
      respond_to do |format|
        format.js #응답을 js로 하겠다.
      end
    end

  end
  
  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      respond_to do |format|
        format.js
      end
    end
  end
end
