class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @questions.sort! {|a,b| a.text <=> b.text}
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to question_path(@questions)
    else
      render 'new'
    end
  end

  def update
    @question = Question.find(params[:id])
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end

  private

  def drug_params
    params.require(:question).permit(:content)
  end
end
