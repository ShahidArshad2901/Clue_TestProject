class QuestionsController < ApplicationController
    def index
      session[:result] = []
      # for 3rd part Api
      # @questions = ApiService.fetch_questions
      # @current_question = @questions.first
      
      @current_question = Question.first
    end
    
    def show
      @questions = Question.all
      @current_question = Question.find(params[:id])
      @context = "" 
      @result = session[:result]
      if question_params[:answer] == "true"
        @context << @current_question.yes_context
        @result << @context
        next_question_id = @current_question.yes_question_id
      elsif question_params[:answer] == "false"
        @context << @current_question.no_context
        @result << @context
        next_question_id = @current_question.no_question_id
      end
        
      session[:result] = @result
        
      if next_question_id.present?
        redirect_to question_path(id: next_question_id)
      else
        # @conclusions = ApiService.fetch_conclusions
        @conclusions = Conclusion.all
        @conclusion = determine_conclusion(@result)
      end
    end

    private

    def question_params
      params.permit(:answer)
    end

    def determine_conclusion(context)
      conclusion = @conclusions.find { |c| c.context == context.join("\n") }
      conclusion&.conclusion
    end
  end