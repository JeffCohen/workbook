class SearchesController < ApplicationController

  def index
    results = `egrep -nriH  '#{params[:term]}' books/#{course['book']}`
    results = results.lines.map(&:chomp)
    results = results.reject { |r| r =~ /assignments/i }
    @chapters = results.map do |result|
      /^books\/[^\/]+\/(?<filename>.+)\.md:(?<line>\d+):(?<extract>.+$)/ =~ result
      filename
    end.uniq.compact

  end


end
