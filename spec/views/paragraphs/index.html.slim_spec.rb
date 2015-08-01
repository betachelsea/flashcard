require 'rails_helper'

RSpec.describe "paragraphs/index", type: :view do
  before(:each) do
    assign(:paragraphs, [
      Paragraph.create!(
        :body => "Body",
        :ja_body => "Ja Body"
      ),
      Paragraph.create!(
        :body => "Body",
        :ja_body => "Ja Body"
      )
    ])
  end

  it "renders a list of paragraphs" do
    render
    assert_select "tr>td", :text => "Body".to_s, :count => 2
    assert_select "tr>td", :text => "Ja Body".to_s, :count => 2
  end
end
