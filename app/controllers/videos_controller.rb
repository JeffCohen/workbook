class VideosController < ApplicationController

  def index
    @unlock = 1
    @videos = appendix(:videos)
  end

  def show
    @title = params[:id].sub(/^\d+\-/,'').titleize
    filename = File.join(Rails.root, 'books', course['book'], 'appendix', 'videos', params[:id])
    filename += ".md" unless filename.ends_with?('.md')
    @content = IO.read(filename)
  end

end
