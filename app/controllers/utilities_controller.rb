class UtilitiesController < ApplicationController

  def ping
    respond_to do |format|
      format.html do
        if params[:key] == '1982734'
          Ping.create data: params[:data], extra: request.query_parameters
        end
        head :ok
      end
      format.json do
        render json: Ping.order('created_at desc').to_json(except: :id)
      end
    end
  end

end
