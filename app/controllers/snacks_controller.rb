class OwnersController < ApplicationController
  def show
    @snacks = Snack.all
  end
end
