class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    id = params['id']
    begin
      @movies = Movie.find id
    rescue ActiveRecord::RecordNotFound
      render file: "#{Rails.root}/public/404.html" , status: 404
    end
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new( movie_params )
    if @movie.save
      redirect_to action: :show, id: @movie.id
    else
      render :new
    end
  end

  def edit
    id = params['id']
    begin
      @movie = Movie.find id
    rescue ActiveRecord::RecordNotFound
      render file: "#{Rails.root}/public/404.html" , status: 404
    end
  end

  def update
    id = params['id']
    begin
      @movie = Movie.find id
      @movie.update(movie_params)
      if @movie.save
        redirect_to action: :show, id: @movie.id
      else
        render :new
      end
    rescue ActiveRecord::RecordNotFound
      render file: "#{Rails.root}/public/404.html" , status: 404
    end
  end

  def remove
    id = params['id']
    begin
      @movies = Movie.delete id
    rescue ActiveRecord::RecordNotFound
      render file: "#{Rails.root}/public/404.html" , status: 404
    end
  end

  private
  def movie_params
    params.require(:movie).permit(:title,:release_date,:description)
  end

end
