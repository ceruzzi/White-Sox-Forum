class TopicsController < ApplicationController

  def index
    @topics = Topic.all.limit(1000)
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def new
  end

  def create
    top=Topic.new
    top.subforum_id = params["subforum_id"]
    top.content=params["content"]
    top.title=params["title"]
    top.user=User.find_by(id: session["user_id"]).username
    top.save
    redirect_to subforum_url(top.subforum_id)
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update title: params[:title],
        content: params[:content]

    redirect_to topic_url(@topic.id)
  end

  def destroy
    @topic= Topic.find(params[:id])
    Topic.delete(params[:id])
    redirect_to subforum_url(@topic.subforum_id)
  end


end
