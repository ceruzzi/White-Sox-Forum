class CommentsController < ApplicationController


  def create
    com=Comment.new
    com.topic_id = params["topic_id"]
    com.user=User.find_by(id: session["user_id"]).username
    com.post_number=params["id"].to_i
    com.content=params["content"]
    com.save
    redirect_to topic_url(com.topic_id)
  end

  def edit
    @comment= Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update content: params[:content]

    redirect_to topic_url(@comment.topic_id)
  end
end