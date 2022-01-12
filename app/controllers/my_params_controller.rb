class MyParamsController < ApplicationController
  def message
    input = params["name"]
    message = ""
    if input[0].downcase == "a"
      message = "Hey, your name starts with the first letter of the alphabet!"
    else
      message = "Your name does not start with an A :/"
    end

    render json: { message: message }
  end

  def guess_num
    number = 36
    input = params["number"].to_i
    if input == 36
      render json: { message: "Good job, you guessed it!" }
    elsif input > 36
      render json: { message: "Go lower" }
    elsif input < 36
      render json: { message: "Go higher" }
    end
  end
end
