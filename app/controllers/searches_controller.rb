class SearchesController < ApplicationController

  def index
    respond_to do |format|
      format.html do
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
      format.json do
        data = {
          by_freq: Search.where("created_at > ?", 30.days.ago).order('freq desc'),
          by_date: Search.where("created_at > ?", 30.days.ago).order('created_at desc')
        }
        render json: data.to_json
      end
    end
  end


end
