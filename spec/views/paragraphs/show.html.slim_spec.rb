require 'rails_helper'

RSpec.describe "paragraphs/show", type: :view do
  before(:each) do
    @paragraph = assign(:paragraph, Paragraph.create!(
      :body => "Body",
      :ja_body => "Ja Body"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Body/)
    expect(rendered).to match(/Ja Body/)
  end
end
