class Question < ApplicationRecord
  has_many :choices

  def answer
    uncorrect
    choices.select {|c| c.correctness}[0]
  end	
 
  def uncorrect
    choices.each {|c| c.correctness = false}
  end
 
  def answer= choice
    if !answer.nil?
       answer.correctness = false
    end
    
    if choices.include? choice
       choice.correctness = true
    else
       choices << choice
       choice.correctness = true
    end
  end
end
