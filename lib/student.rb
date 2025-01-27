require 'pry'

class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 
#student_hash = {:name=>"Alex Patriquin", :location=>"New York, NY"}
  @@all = []

  def initialize(student_hash)
    
    student_hash.each do |key, value|
      self.send(("#{key}="), value)
      @@all << self
    end
  
  end

  def self.create_from_collection(students_array)
    students_array.each {|student| self.new(student)}
  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each do |key, value|
      self.send(("#{key}="), value)
    end
  end

  def self.all
    @@all
  end
end

