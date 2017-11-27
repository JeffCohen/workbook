class SessionsController < ApplicationController
  include Canvas

  skip_before_action :require_login if Rails.configuration.site['require_login']

  def new
    redirect_to root_url unless course['require_login']
  end

  def create
    if find_student(params[:netid])
      session[:user_id] = params[:netid]
    end

    redirect_to root_url
  end

  def destroy
    reset_session
    redirect_to root_url
  end

  private

  def find_student(netid)
    student_in?(netid, course['school'], course['canvas_course_id'])
  end

end
