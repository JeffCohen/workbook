class UtilitiesController < ApplicationController

  def ping
    if params[:key] == '1982734'
      Ping.create data: params[:data], extra: request.query_parameters
    end
    head :ok
  end

end
