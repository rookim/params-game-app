class MyParamsController < ApplicationController
  def message
    input = params["name"]
    if input[0].downcase == "a"
      render json: { message: "Hey, your name starts with the first letter of the alphabet!" }
    else
      render json: { message: "Cool name, #{input}.capitalize" }
    end
  end
end
