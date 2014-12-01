class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new
    @question.question = params[:question]
    @question.school_id = params[:school_id]

    if @question.save
      redirect_to "/questions", :notice => "Question created successfully."
    else
      render 'new'
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])

    @question.question = params[:question]
    @question.school_id = params[:school_id]

    if @question.save
      redirect_to "/questions", :notice => "Question updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])

    @question.destroy

    redirect_to "/questions", :notice => "Question deleted."
  end
end
