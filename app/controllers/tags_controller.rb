class TagsController < ApplicationController

  def index
    @tags = Tag.all.limit(1000)
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def create
    Tag.create title: params[:title] #will only happen if doesnt exist already
    @tag = Tag.find_by(title: params[:title])

    con=Connector.new
    con.topic_id = params["topic_id"]
    con.tag_id = @tag.id
    if !Connector.exists?(topic_id: params["topic_id"], tag_id: @tag.id)
      con.save #only save if it doesnt exist already, otherwise just use it for redirect
    end
    redirect_to topic_url(con.topic_id)
  end

  def destroy
    @connector= Connector.find(params[:id])
    Connector.delete(params[:id])
    redirect_to topic_url(@connector.topic_id)
  end
  end
