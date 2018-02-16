class SearchesController < ApplicationController

  def index
    results = `egrep -nriH  '#{params[:term]}' books/#{course['book']}`
    results = results.lines.map(&:chomp)
    results = results.reject { |r| r =~ /assignments/i }
    @chapters = results.map do |result|
      /^books\/[^\/]+\/(?<filename>.+)\.md:(?<line>\d+):(?<extract>.+$)/ =~ result
      filename
    end.uniq.compact

    s = Search.find_by(term: params[:term].strip)
    s ||= Search.new(term: params[:term].strip, hits: @chapters.size, freq: 0)
    s.freq += 1
    s.save
  end


end
