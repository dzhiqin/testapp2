class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end
  def new
    @author = Author.new
  end
  def create

    @author = Author.create(author_params)
    if @author.save
      redirect_to authors_path
    end
  end
  def show
    @author = Author.find_by(id: params[:id])
  end
  def edit
    @author = Author.find_by(id: params[:id])
  end
  def update
    @author = Author.find_by(id: params[:id])
    if @author.update(author_params)
      redirect_to authors_path
    else
      render 'edit'
    end
  end
  def destroy
    @author = Author.find_by(id: params[:id])
    @author.destroy
    redirect_to authors_path
  end

  private
  def author_params
    params.require(:author).permit(:name, :mobile, :avatar)
  end
end
