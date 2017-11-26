class LabsController < ApplicationController

  def index
    @unlock = 1
    @labs = appendix(:labs)
  end

  def show
    @title = params[:id].sub(/^\d+\-/,'').titleize
    filename = File.join(Rails.root, 'books', course['book'], 'appendix', 'labs', params[:id])
    filename += ".md" unless filename.ends_with?('.md')
    @content = IO.read(filename)
  end

end
