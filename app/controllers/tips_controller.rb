class TipsController < ApplicationController

  TIPS = ["Small steps make for giant leaps.",
          "Watch for cause and effect.",
          "Make a rough cut first.",
          "Just try it!",
          "Make the invisible visible.",
          "Explain your problem to somebody else.",
          "Read more than you write."]

  def show
    @tip = TIPS.sample
  end

end
