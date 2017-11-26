class AssignmentsController < ApplicationController

  def index
    @unlock = 1
    @assignments = appendix(:assignments)
    logger.debug @assignments
  end

  def show
    @title = params[:id].sub(/^\d+\-/,'').titleize
    filename = File.join(Rails.root, 'books', course['book'], 'appendix', 'assignments', params[:id])
    filename += ".md" unless filename.ends_with?('.md')
    @content = IO.read(filename)
  end

end
