class SubforumsController < ApplicationController

  def index
    @subforums = Subforum.all.limit(1000)
  end

  def show
    @subforum = Subforum.find(params[:id])
  end

  def new
  end

  def create
    Subforum.create title: params[:title]

    redirect_to root_path
  end

  def edit
    @subforum = Subforum.find(params[:id])
  end

  def update
    @subforum = Subforum.find(params[:id])
    @subforum.update title: params[:title]

    redirect_to subforum_url(@subforum.id)
  end

  def destroy
    Subforum.delete(params[:id])

    redirect_to root_path
  end


end
