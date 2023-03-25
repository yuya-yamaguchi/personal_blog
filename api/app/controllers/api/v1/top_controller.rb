class Api::V1::TopController < ApplicationController
  def index
    render json: {message: "hoge"}
  end
end
