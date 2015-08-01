class WelcomeController < ApplicationController

  def index
    @cards = Card.all
    @paragraphs = Paragraph.all
  end

end
