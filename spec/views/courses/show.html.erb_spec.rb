require 'rails_helper'

RSpec.describe "courses/show", :type => :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :name => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
