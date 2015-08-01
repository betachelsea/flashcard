require 'rails_helper'

RSpec.describe "paragraphs/edit", type: :view do
  before(:each) do
    @paragraph = assign(:paragraph, Paragraph.create!(
      :body => "MyString",
      :ja_body => "MyString"
    ))
  end

  it "renders the edit paragraph form" do
    render

    assert_select "form[action=?][method=?]", paragraph_path(@paragraph), "post" do

      assert_select "input#paragraph_body[name=?]", "paragraph[body]"

      assert_select "input#paragraph_ja_body[name=?]", "paragraph[ja_body]"
    end
  end
end
