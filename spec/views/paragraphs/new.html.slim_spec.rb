require 'rails_helper'

RSpec.describe "paragraphs/new", type: :view do
  before(:each) do
    assign(:paragraph, Paragraph.new(
      :body => "MyString",
      :ja_body => "MyString"
    ))
  end

  it "renders new paragraph form" do
    render

    assert_select "form[action=?][method=?]", paragraphs_path, "post" do

      assert_select "input#paragraph_body[name=?]", "paragraph[body]"

      assert_select "input#paragraph_ja_body[name=?]", "paragraph[ja_body]"
    end
  end
end
