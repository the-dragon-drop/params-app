class ParamsExamplesController < ApplicationController
  def query
    @message = params["my_message"]
    @message_2 = params["other_message"]
  end

  def url_segment
    @message = params["this_is_a_key"]
  end

  def form_show
    
  end

  def form_send
    @message = params["form_message"]
  end










  def name
    if params["title"]
      @name = params["title"].upcase

      if @name.first.upcase == "A"
        @message = "mcface"
      end
    end
  end

  def guess
    @user_guess = params["submission"].to_i
    winning_number = 42

    if winning_number < @user_guess
      @answer_message = "too high."
    elsif winning_number > @user_guess
      @answer_message = "too low."
    else 
      @answer_message = "right on the money!!!"
    end
  end

  def segment_guess
    @user_guess = params["turkey"].to_i
    winning_number = 42

    if winning_number < @user_guess
      @answer_message = "too high."
    elsif winning_number > @user_guess
      @answer_message = "too low."
    else 
      @answer_message = "right on the money!!!"
    end
  end
end








