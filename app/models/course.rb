class Course < ApplicationRecord

  validates_presence_of :name, :url_path, :local_folder

  def to_param
    url_path
  end
  
end
