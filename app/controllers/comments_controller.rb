class CommentsController < ApplicationController
  before_action :set_movie
  before_action :set_comment, only:[:show, :edit, :update, :destroy]

  def index
    @comments = @movie.topics
  end

  def show
  end

  def new
    @comment = @movie.topics.new
    render partial: "form"
  end

  def create
    @comment = @movie.topics.new(comment_params)
    if @movie.save
      redirect_to [@movie, @comment]
    else
      render :new
    end 
  end

  def edit
    render partial: "form"
  end

  def update
    if @comment.update(comment_params)
      redirect_to [@movie, @comment]
    else 
      render :edit
    end 
  end

  def destroy
    @comment.destroy 
    redirect_to movie_comments_path
  end

  private
  def set_movie 
    @movie = movie.find(params[:sub_id])
  end 

  def set_comment 
    @comment = comment.find(params[:id])
  end 

  def comment_params 
    params.require(:comment).permit(:name, :body)
  end 
end
