class CoachingController < ApplicationController

  def ask
  end

  def answer
   @query = params[:query]# je recupere les params de l'url (=query => la question utilisateur )
    # j"utlise
    @coach_answer = coach_answer_enhanced(@query)
  end



 private

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      return ""
      elsif your_message.include? "?" then
        return "Silly question, get dressed and go to work!"
      else
       return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == "I am going to work right now!" or your_message == "I AM GOING TO WORK RIGHT NOW!"
     return ""
    elsif your_message == your_message.upcase then
     return "I can feel your motivation! "+coach_answer(your_message)
    else
     return coach_answer(your_message)
    end # TODO: return coach answer to your_message, with additional custom rules of yours!
  end

end
