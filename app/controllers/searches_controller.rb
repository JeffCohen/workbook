class SearchesController < ApplicationController

  def index
    results = `egrep -nriH  '#{params[:term]}' books/law713`
    @results = results.lines.map(&:chomp)
  end


end
