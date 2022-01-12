class MyParamsController < ApplicationController
  def message
    input = params["name"]
    message = "Your name does not start with an A :/"
    if input[0].downcase == "a"
      message = "Hey, your name starts with the first letter of the alphabet!"
    end

    render json: { message: message }
  end

  def guess_num
    number = 36
    input = params["number"].to_i
    message = ""
    if input == 36
      message = "Good job, you guessed it!"
    elsif input > 36
      message = "Go lower"
    elsif input < 36
      message = "Go higher"
    end

    render json: { message: message }
  end
end
