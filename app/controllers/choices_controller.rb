class ChoicesController < ApplicationController
  def create
    @question = Question.find(params[:question])
    content = params[:content]
    correctness = params[:correctness] == "1"
    new = Choice.create(:content => content, :correctness => correctness, :question_id => @question.id)
 
    if new.correctness
     @question.answer = new
    end
 
    redirect_to question_path(@question)
   end
 
   def destroy
    @question = Question.find(params[:question])
    @choice = Choice.find(params[:choice])
    @choice.destroy
    redirect_to question_path(@question)
   end
end
