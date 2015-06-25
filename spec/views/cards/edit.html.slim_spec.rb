require 'rails_helper'

RSpec.describe "cards/edit", type: :view do
  before(:each) do
    @card = assign(:card, Card.create!(
      :word => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit card form" do
    render

    assert_select "form[action=?][method=?]", card_path(@card), "post" do

      assert_select "input#card_word[name=?]", "card[word]"

      assert_select "textarea#card_description[name=?]", "card[description]"
    end
  end
end
