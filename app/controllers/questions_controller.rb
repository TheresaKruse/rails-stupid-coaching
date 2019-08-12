class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.end_with? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else @answer = "I don't care, get dressed and go to work!"
    end
  end
end
#   <% if @question == "I am going to work"%>
#   <%=Great!%>
# <%elsif @question.end_with? '?'%>
#   <%=Silly question, get dressed and go to work!%>
# <%else%>
#   <p>I don't care, get dressed and go to work!</p>
# <%end%>
