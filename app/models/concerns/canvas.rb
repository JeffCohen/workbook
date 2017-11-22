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

  def students_for(course_id)
    data = run_canvas_api("/courses/#{course_id}/users?enrollment_state\\[\\]=active")
    # data.map { |user| user['login'] }
  end

  def canvas_courses(pluck = nil)
    all_courses = run_canvas_api('/courses')
    all_courses.select { |course| teaching?(course) }.map do |course|
      pluck ? course[pluck.to_s] : course
    end
  end

  def run_canvas_api(api_endpoint)
    if api_endpoint =~ /\?/
      api_endpoint += "&per_page=100"
    else
      api_endpoint += "?per_page=100"
    end

    SCHOOLS.map do |school|
      token = school[:token]
      puts token
      cmd = "curl -sH \"Authorization: Bearer #{token}\" 'https://canvas.instructure.com/api/v1#{api_endpoint}'"
      puts cmd
      json = `#{cmd}`
      data = JSON.parse(json)
      # puts data.class
      # puts data
      if data.is_a?(Hash) && data['errors']
        puts data['errors'].map { |m| m['message']}.join('. ')
        data = nil
      end
      data
    end.compact.reduce(:+)
  end

end
