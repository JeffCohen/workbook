class TipsController < ApplicationController

  TIPS = ["Small steps make for giant leaps.",
          "Watch for cause and effect.",
          "Make the invisible visible.",
          "Just try it!",
          "Success goes to the curious.",
          "Explain your problem to somebody else.",
          "Read more than you write."]

  def index
    @tips = TIPS
  end

  def show
    if book['habits'].nil? || book['habits']
      @tip = TIPS.sample
    else
      redirect_to "/#{topics.first}"
    end
  end

end
