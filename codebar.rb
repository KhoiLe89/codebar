require "pry"
class Member
  attr_accessor :full_name
  @@members = []
  def initialize(full_name)
    @full_name = full_name
    @@members.push(self)
  end
  def introduce
    p "Hey, my name is #{self.full_name}"
  end
  def self.members
    return @@members
  end
end

class Student < Member
  def initialize(full_name, reason)
    @full_name = full_name
    @reason = reason
    @@members.push(self)
  end
  def reason
    return @reason
  end
end

class Instructor < Member

  def initialize(full_name, bio, skills = [])
    @full_name = full_name
    @bio = bio
    @skills = skills
    @@members.push(self)
  end
  def say_bio
    return @bio
  end
  def skills
    return @skills
  end
  def add_skill(new_skill)
    @skills.push(new_skill)
  end
end

class Workshop < Member
  @@workshops = []
  @@instructors = []
  @@students = []
  def initialize(date, classroom)
    @date = date
    @classroom = classroom
  end
  def add_participant(member)

      if member.class == Instructor
        @@instructors.push(member)

      else
        @@students.push(member)

      end

    p "instructors = #{@@instructors}"
    p "students = #{@@students}"
  end
  def print_details
    return [@date, @classroom, "instructors = #{@@instructors}", @@students]
  end
  def self.workshops
    return @@workshops
  end
end


Khoi = Student.new("Khoi Le", "Knowing Ruby and Javascript is cool!")
Jesse = Instructor.new("Jesse Shawl", "I've been coding for 8 years and want to share the love!", ["Ruby", "Javascript"])
workshop = Workshop.new("12/03/2014", "Shutl")

jane = Student.new("Jane Doe", "I am trying to learn programming and need some help")
lena = Student.new("Lena Smith", "I am really excited about learning to program!")
vicky = Instructor.new("Vicky Ruby", "I want to help people learn coding.")
vicky.add_skill("HTML")
vicky.add_skill("JavaScript")
nicole = Instructor.new("Nicole McMillan", "I have been programming for 5 years in Ruby and want to spread the love")
nicole.add_skill("Ruby")

binding.pry
