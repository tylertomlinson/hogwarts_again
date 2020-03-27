class Professor <ApplicationRecord

has_many :professor_students

has_many :students, :through => :professor_students

validates_presence_of :name,
                      :age,
                      :specialty

  def students_average_age
    (students.sum(:age) / students.count.to_f).round(2)
  end
end
