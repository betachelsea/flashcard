require 'rails_helper'

RSpec.describe "cards/new", type: :view do
  before(:each) do
    assign(:card, Card.new(
      :word => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new card form" do
    render

    assert_select "form[action=?][method=?]", cards_path, "post" do

      assert_select "input#card_word[name=?]", "card[word]"

      assert_select "textarea#card_description[name=?]", "card[description]"
    end
  end
end
