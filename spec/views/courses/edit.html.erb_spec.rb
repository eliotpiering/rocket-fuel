require 'rails_helper'

RSpec.describe "courses/edit", :type => :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :name => "MyText"
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "textarea#course_name[name=?]", "course[name]"
    end
  end
end
