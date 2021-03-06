class ResponsesController < ApplicationController
  def index
    @responses = Response.all
  end

  def show
    @response = Response.find(params[:id])
  end

  def new
    @response = Response.new
  end

  def create
    @response = Response.new
    @response.student_id = params[:student_id]
    @response.question_id = params[:question_id]
    @response.qanswer = params[:qanswer]

    if @response.save
      redirect_to "/responses", :notice => "Response created successfully."
    else
      render 'new'
    end
  end

  def edit
    @response = Response.find(params[:id])
  end

  def update
    @response = Response.find(params[:id])

    @response.student_id = params[:student_id]
    @response.question_id = params[:question_id]
    @response.qanswer = params[:qanswer]

    if @response.save
      redirect_to "/edit_responses", :notice => "Response updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @response = Response.find(params[:id])

    @response.destroy

    redirect_to "/responses", :notice => "Response deleted."
  end
end
