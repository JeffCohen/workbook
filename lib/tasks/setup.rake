require 'fileutils'

namespace :app do

  desc "Configures Heroku environment variables"
  task :setup do
    token = ENV['JC_GITHUB_TOKEN']
    puts `heroku config:set JC_GITHUB_TOKEN=#{token}`
  end

  desc "Downloads the course book"
  task :setup_book do
    token = ENV['JC_GITHUB_TOKEN']
    book = Rails.configuration.site['book']
    FileUtils.mkdir_p File.join(Rails.root, 'books')

    if File.exist?("books/#{book}")
      puts `cd books/#{book} && git pull`
    else
      puts `cd books && git clone https://#{token}@github.com/jeffcohen/#{book}.git`
    end

    puts "Done."
  end
end
