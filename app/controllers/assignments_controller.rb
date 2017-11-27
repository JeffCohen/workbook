class AssignmentsController < ApplicationController

  def index
    @unlock_week = course['assignment_unlock_week']
    @assignments = appendix(:assignments)
  end

  def show
    @title = params[:id].sub(/^\d+\-/,'').titleize
    filename = File.join(Rails.root, 'books', course['book'], 'appendix', 'assignments', params[:id])
    filename += ".md" unless filename.ends_with?('.md')
    @content = IO.read(filename)
  end

end
