require 'rails_helper'

RSpec.describe Course, :type => :model do

  let(:course) {Course.create}
  let(:course2) {Course.create}
  let(:user) {User.create({email: "test@user.com", password: "12345678"})}
  let(:user2) {User.create({email: "test@user1.com", password: "12345678"})}
  let(:skill) {Skill.create}
  let(:skill2) {Skill.create}

  describe "Course" do

    it "can have many users" do
      course.users << [user, user2]

      expect(course).to be_valid
    end

    it "many can belong to a user" do
      #todo move to user model test
      user.courses << [course, course2]

      expect(user).to be_valid
    end

    it "can have many skills" do
      course.skills << [skill, skill2]

      expect(course).to be_valid
    end

    it "many can belong to a skill" do
      #todo move to skill model test
      skill.courses << [course, course2]

      expect(skill).to be_valid
    end

  end

end
