class Course < ApplicationRecord

  validates_presence_of :name

  def to_param
    url_path
  end

end
