module Canvas

  SCHOOLS = [
    {
      name: 'NU',
      token: '1876~EvWMgnClsOXibGAgFyzgbJkC40zC9yAITsYBQKZMU8q7BvUVtQkvMIpDO3aKxqw8',
      abbrevs: { 'WI' => 'Winter', 'SP' => 'Spring', 'FA' => "Fall" },
      matcher: /(?<year>\d\d\d\d)(?<quarter>.+)_(?<dept>\S)+_(?<number>\d\d\d)-\d_SEC\d\d/ # year quarter dept number sections
    },
    {
      name: 'UC',
      token: '2349~U734KmpbGS1G3iv2ihi3RQSDw3mQSkyw4sKtpW58gl9lW84cm1UHthPpSMEikYTu',
      abbrevs: {},
      matcher: /(?<dept>\S+) (?<number>\d+) [\d,]* (.+)$/ # dept number sections title
    }
  ]

  def teaching?(course)
    course['enrollments'].first['role'] == 'TeacherEnrollment'
  end

  def student_in?(net_id, school_name, course_id)
    logger.debug("student_in?(#{net_id}, #{school_name}, #{course_id})")

    logins = students_for(school_name, course_id).map { |user| user['login_id'] }
    logins.detect { |student_id| student_id == net_id }
  end

  def students_for(school_name, course_id)
    run_canvas_api(school_name, "/courses/#{course_id}/users?enrollment_state\\[\\]=active")
  end

  def canvas_courses(school_name, pluck = nil)
    all_courses = run_canvas_api(school_name, '/courses')
    all_courses.select { |course| teaching?(course) }.map do |course|
      pluck ? course[pluck.to_s] : course
    end
  end

  def run_canvas_api(school_name, api_endpoint)
    if api_endpoint =~ /\?/
      api_endpoint += "&per_page=100"
    else
      api_endpoint += "?per_page=100"
    end

    school = SCHOOLS.detect { |s| s[:name] == school_name}
    # logger.debug("School: #{school}")
    token = school[:token]
    puts token
    # logger.debug("Token: #{token}")
    cmd = "curl -sH \"Authorization: Bearer #{token}\" 'https://canvas.instructure.com/api/v1#{api_endpoint}'"
    puts cmd
    json = `#{cmd}`
    data = JSON.parse(json)
    # logger.debug data.class
    # logger.debug data
    if data.is_a?(Hash) && data['errors']
      puts data['errors'].map { |m| m['message']}.join('. ')
      data = nil
    end
    data
  end

end
