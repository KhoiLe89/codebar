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

Khoi = Student.new("Khoi Le", "Knowing Ruby and Javascript is cool!")
Jesse = Instructor.new("Jesse Shawl", "I've been coding for 8 years and want to share the love!", ["Ruby", "Javascript"])
binding.pry
