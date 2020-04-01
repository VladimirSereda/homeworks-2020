# frozen_string_literal: true

class Student
  attr_reader :name, :surname
  attr_accessor :mentors
  attr_reader :homeworks
  def initialize(name:, surname:)
    @name = name
    @surname = surname
    @homeworks = []
    @mentors = []
  end

  def submit_homework!(homework_data)
    works = Homework.new(homework_data)
    homeworks << works
    notificate_mentors(works)
  end

  def show_homeworks
    homeworks.empty? ? (puts 'No homeworks') : (puts homeworks)
  end

  def notificate_mentors(works)
    mentors.each do |mentor|
      mentor.notifications << Notification.new(self, works)
    end
  end
end
