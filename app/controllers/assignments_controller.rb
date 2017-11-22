class AssignmentsController < ApplicationController

  def index
    @assignments = appendix(:assignments)
  end
  
end
