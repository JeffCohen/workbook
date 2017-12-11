class SearchesController < ApplicationController

  def index
    results = `egrep -nriH  '#{params[:term]}' books/law713`
    results = results.lines.map(&:chomp)
    @chapters = results.map do |result|
      /^books\/[^\/]+\/(?<filename>.+)\.md:(?<line>\d+):(?<extract>.+$)/ =~ result
      filename
    end.uniq

  end


end
