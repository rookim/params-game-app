class MyParamsController < ApplicationController
  def message
    input = params["name"]
    if input[0].downcase == "a"
      render json: { message: "Hey, your name starts with the first letter of the alphabet!" }
    else
      render json: { message: "Cool name, #{input}.capitalize" }
    end
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
