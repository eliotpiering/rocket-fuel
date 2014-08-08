require 'rails_helper'

RSpec.describe Track, :type => :model do

  let(:user) {User.create({email: "test@example.com", password: '12345678'})}
  let(:user2) {User.create({email: "test2@example.com", password: '12345678'})}
  let(:course) {Course.create}
  let(:course2) {Course.create}
  let(:skill) {Skill.create}
  let(:skill2) {Skill.create}
  let(:track) {Track.create}

  it "can have many users" do
    track.users << [user, user2]

    expect(track).to be_valid
  end

  it "can have many courses" do
    track.courses << [course, course2]

    expect(track).to be_valid
  end

  it "can have many skills" do
    track.skills << [skill, skill2]

    expect(track).to be_valid
  end
end
