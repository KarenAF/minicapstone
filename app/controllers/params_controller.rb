class ParamsController < ApplicationController

  def query_params
    @message = params[:my_message]
    @message2 = params[:my_message2]
    render 'query.html.erb'
  end
end

